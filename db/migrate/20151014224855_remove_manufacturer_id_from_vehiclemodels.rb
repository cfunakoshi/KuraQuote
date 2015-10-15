class RemoveManufacturerIdFromVehiclemodels < ActiveRecord::Migration
  def change
    remove_column :vehiclemodels, :manufacturer_id, :integer
  end
end
