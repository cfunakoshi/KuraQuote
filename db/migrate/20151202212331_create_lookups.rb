class CreateLookups < ActiveRecord::Migration
  def change
    create_table :lookups do |t|
      t.string :manufacturer
      t.string :model
      t.text :specifications
      t.text :vin

      t.timestamps null: false
    end
  end
end
