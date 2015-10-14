class AddUserIdToVehiclevins < ActiveRecord::Migration
  def change
    add_column :vehiclevins, :user_id, :integer
  end
end
