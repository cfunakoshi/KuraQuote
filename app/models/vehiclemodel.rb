class Vehiclemodel < ActiveRecord::Base
  has_many :vehicles
  belongs_to :vehiclemanufacturer
  
end
