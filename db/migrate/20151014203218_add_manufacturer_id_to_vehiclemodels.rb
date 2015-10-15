class AddManufacturerIdToVehiclemodels < ActiveRecord::Migration
  def change
    add_column :vehiclemodels, :manufacturer_id, :integer
  end
end
