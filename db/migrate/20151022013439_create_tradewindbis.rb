class CreateTradewindbis < ActiveRecord::Migration
  def change
    create_table :tradewindbis do |t|
      t.integer :price
      t.integer :bodilyinjury_id

      t.timestamps null: false
    end
  end
end
