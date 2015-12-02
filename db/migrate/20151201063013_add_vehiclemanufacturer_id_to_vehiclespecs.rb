class AddVehiclemanufacturerIdToVehiclespecs < ActiveRecord::Migration
  def change
    add_column :vehiclespecs, :vehiclemanufacturer_id, :integer
  end
end
