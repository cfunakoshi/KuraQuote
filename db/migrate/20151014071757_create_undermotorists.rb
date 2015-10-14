class CreateUndermotorists < ActiveRecord::Migration
  def change
    create_table :undermotorists do |t|
      t.text :unstacked
      t.text :stacked
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
