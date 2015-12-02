class AddVehiclemodelIdToVehiclespecs < ActiveRecord::Migration
  def change
    add_column :vehiclespecs, :vehiclemodel_id, :integer
  end
end
