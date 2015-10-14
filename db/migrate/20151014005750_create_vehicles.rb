class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.text :vin
      t.integer :year
      t.string :manufacturer
      t.text :model
      t.text :style
      t.string :primary_use

      t.timestamps null: false
    end
  end
end
