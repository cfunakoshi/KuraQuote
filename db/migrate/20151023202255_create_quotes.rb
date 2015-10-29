class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.integer :companylist_id
      t.text :bodilyinjury
      t.text :propertydamage
      t.text :uninsuredunstacked
      t.text :uninsuredstacked
      t.text :underinsuredunstacked
      t.text :underinsuredstacked
      t.text :piprotection
      t.integer :pideductible
      t.integer :collision
      t.integer :comprehensive
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
