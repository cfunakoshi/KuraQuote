class AddUserIdToVehiclemodels < ActiveRecord::Migration
  def change
    add_column :vehiclemodels, :user_id, :integer
  end
end
