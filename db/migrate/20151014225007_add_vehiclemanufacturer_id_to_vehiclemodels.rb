class AddVehiclemanufacturerIdToVehiclemodels < ActiveRecord::Migration
  def change
    add_column :vehiclemodels, :vehiclemanufacturer_id, :integer
  end
end
