class CreateVehiclemanufacturers < ActiveRecord::Migration
  def change
    create_table :vehiclemanufacturers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
