class AddUserIdToVehicleuses < ActiveRecord::Migration
  def change
    add_column :vehicleuses, :user_id, :integer
  end
end
