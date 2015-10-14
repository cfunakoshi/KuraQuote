class CreatePropertydamages < ActiveRecord::Migration
  def change
    create_table :propertydamages do |t|
      t.text :limit
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
