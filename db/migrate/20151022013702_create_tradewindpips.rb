class CreateTradewindpips < ActiveRecord::Migration
  def change
    create_table :tradewindpips do |t|
      t.integer :price
      t.integer :piprotection_id

      t.timestamps null: false
    end
  end
end
