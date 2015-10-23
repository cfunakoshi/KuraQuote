class CreateHorribleinsuranceundermotors < ActiveRecord::Migration
  def change
    create_table :horribleinsuranceundermotors do |t|
      t.integer :price
      t.integer :deductible
      t.integer :undermotorist_id
      t.integer :companylist_id

      t.timestamps null: false
    end
  end
end
