class Vehiclemanufacturer < ActiveRecord::Base
  has_many :users
  has_many :vehicles
  has_many :vehiclemodels
  
end
