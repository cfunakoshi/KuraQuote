class AddVehicleIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :vehicle_id, :integer
  end
end
