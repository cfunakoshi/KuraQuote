class CreateHorribleinsurancecollisions < ActiveRecord::Migration
  def change
    create_table :horribleinsurancecollisions do |t|
      t.integer :price
      t.integer :collision_id

      t.timestamps null: false
    end
  end
end
