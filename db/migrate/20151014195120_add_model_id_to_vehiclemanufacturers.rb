class AddModelIdToVehiclemanufacturers < ActiveRecord::Migration
  def change
    add_column :vehiclemanufacturers, :model_id, :integer
  end
end
