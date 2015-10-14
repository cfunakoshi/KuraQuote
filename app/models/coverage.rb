class Coverage < ActiveRecord::Base
  has_many :users
  has_many :bodilyinjurys
  has_many :collisions
  has_many :comprehensives
  has_many :piprotections
  has_many :propertydamages
  has_many :undermotorists
  has_many :unmotorists
  
end
