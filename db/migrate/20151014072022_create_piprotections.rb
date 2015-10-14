class CreatePiprotections < ActiveRecord::Migration
  def change
    create_table :piprotections do |t|
      t.text :limit
      t.integer :deductible
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
