class CreateTradewindcomprehensives < ActiveRecord::Migration
  def change
    create_table :tradewindcomprehensives do |t|
      t.integer :price
      t.integer :sym_code
      t.text :year
      t.integer :companylist_id
      t.integer :vehiclevin_id

      t.timestamps null: false
    end
  end
end
