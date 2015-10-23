class CreateTradewindunmotors < ActiveRecord::Migration
  def change
    create_table :tradewindunmotors do |t|
      t.integer :price
      t.integer :deductible
      t.integer :unmotorist_id

      t.timestamps null: false
    end
  end
end
