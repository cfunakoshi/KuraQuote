class CreateTradewindundermotors < ActiveRecord::Migration
  def change
    create_table :tradewindundermotors do |t|
      t.integer :price
      t.integer :deductible
      t.integer :undermotorist_id

      t.timestamps null: false
    end
  end
end
