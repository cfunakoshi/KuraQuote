class Vehiclemanufacturer < ActiveRecord::Base
  has_many :users
  has_many :vehicles
  
end
