class Quote < ActiveRecord::Base
  belongs_to :user
   has_many :bodilyinjurys
  has_many :collisions
  has_many :comprehensives
  has_many :piprotections
  has_many :propertydamages
  has_many :undermotorists
  has_many :unmotorists
end
