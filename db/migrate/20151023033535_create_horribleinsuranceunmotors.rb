class CreateHorribleinsuranceunmotors < ActiveRecord::Migration
  def change
    create_table :horribleinsuranceunmotors do |t|
      t.integer :price
      t.integer :deductible
      t.integer :unmotorist_id
      t.integer :companylist_id

      t.timestamps null: false
    end
  end
end
