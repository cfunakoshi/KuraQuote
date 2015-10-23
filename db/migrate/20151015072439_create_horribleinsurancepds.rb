class CreateHorribleinsurancepds < ActiveRecord::Migration
  def change
    create_table :horribleinsurancepds do |t|
      t.integer :price
      t.integer :propertydamage_id

      t.timestamps null: false
    end
  end
end
