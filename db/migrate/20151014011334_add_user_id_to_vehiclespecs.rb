class AddUserIdToVehiclespecs < ActiveRecord::Migration
  def change
    add_column :vehiclespecs, :user_id, :integer
  end
end
