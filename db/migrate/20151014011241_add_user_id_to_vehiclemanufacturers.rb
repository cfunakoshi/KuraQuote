class AddUserIdToVehiclemanufacturers < ActiveRecord::Migration
  def change
    add_column :vehiclemanufacturers, :user_id, :integer
  end
end
