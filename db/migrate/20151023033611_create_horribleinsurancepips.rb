class CreateHorribleinsurancepips < ActiveRecord::Migration
  def change
    create_table :horribleinsurancepips do |t|
      t.integer :price
      t.integer :piprotection_id
      t.integer :companylist_id

      t.timestamps null: false
    end
  end
end
