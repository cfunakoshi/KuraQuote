class CreateVehiclespecs < ActiveRecord::Migration
  def change
    create_table :vehiclespecs do |t|
      t.text :specifications

      t.timestamps null: false
    end
  end
end
