class CreateHorriblecomps < ActiveRecord::Migration
  def change
    create_table :horriblecomps do |t|
      t.integer :price
      t.integer :sym_code
      t.text :year
      t.integer :companylist_id
      t.integer :vehiclevin_id
      t.integer :deductible

      t.timestamps null: false
    end
  end
end
