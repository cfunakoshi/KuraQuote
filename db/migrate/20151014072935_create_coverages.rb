class CreateCoverages < ActiveRecord::Migration
  def change
    create_table :coverages do |t|
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

      t.timestamps null: false
    end
  end
end
