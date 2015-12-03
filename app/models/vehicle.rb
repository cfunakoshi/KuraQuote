class Vehicle < ActiveRecord::Base
  belongs_to :user
  belongs_to :vehiclemanufacturer
  belongs_to :vehiclemodel
  belongs_to :vehiclespec
  belongs_to :vehicleuse
  belongs_to :vehiclevin
  belongs_to :lookup

end
