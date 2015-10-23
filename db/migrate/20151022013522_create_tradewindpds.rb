class CreateTradewindpds < ActiveRecord::Migration
  def change
    create_table :tradewindpds do |t|
      t.integer :price
      t.integer :propertydamage_id

      t.timestamps null: false
    end
  end
end
