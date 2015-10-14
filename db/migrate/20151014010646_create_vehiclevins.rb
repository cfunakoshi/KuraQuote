class CreateVehiclevins < ActiveRecord::Migration
  def change
    create_table :vehiclevins do |t|
      t.text :vin

      t.timestamps null: false
    end
  end
end
