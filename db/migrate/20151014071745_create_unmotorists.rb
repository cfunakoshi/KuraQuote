class CreateUnmotorists < ActiveRecord::Migration
  def change
    create_table :unmotorists do |t|
      t.text :unstacked
      t.text :stacked
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
