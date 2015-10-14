class CreateCollisions < ActiveRecord::Migration
  def change
    create_table :collisions do |t|
      t.integer :deductible
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
