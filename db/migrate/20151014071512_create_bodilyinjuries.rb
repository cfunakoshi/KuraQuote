class CreateBodilyinjuries < ActiveRecord::Migration
  def change
    create_table :bodilyinjuries do |t|
      t.text :limit
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
