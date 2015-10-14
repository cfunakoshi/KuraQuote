class CreateVehicleuses < ActiveRecord::Migration
  def change
    create_table :vehicleuses do |t|
      t.string :usage

      t.timestamps null: false
    end
  end
end
