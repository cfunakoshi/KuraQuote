class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :manufacturer
      t.text :vin
      t.string :model
      t.text :specs
      t.string :use
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
