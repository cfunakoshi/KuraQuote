class User < ActiveRecord::Base
  has_many :basicinfos
  has_many :vehicles
  belongs_to :coverage
    attr_accessor :age
    attr_accessor :remember_token, :activation_token
    before_save { self.email = email.downcase }
    #before_create :confirmation_token

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, 
            format: { with: VALID_EMAIL_REGEX }, 
            uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
  
class << self
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
  
  def User.new_token
    SecureRandom.urlsafe_base64
  end
end
  
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end
  
  def authenticated?(remember_token)
    digest = self.send('remember_digest')
    return false if digest.nil?
    BCrypt::Password.new(digest).is_password?(remember_token)
  end
  
  def forget
    update_attribute(:remember_digest, nil)
  end
  
    def age
      Time.now - self.birthday
  end
  
 # def email_activate
  #  self.email_confirmed = true
  #  self.confirm_token = nil
  #  save!(:validate => false)
 # end
  
 #private
  #def confirmation_token
  #    if self.confirm_token.blank?
  #        self.confirm_token = SecureRandom.urlsafe_base64.to_s
   #   end
   # end
  
end
