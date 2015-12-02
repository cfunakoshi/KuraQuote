class AddDeductibleToTradewindcomprehensives < ActiveRecord::Migration
  def change
    add_column :tradewindcomprehensives, :deductible, :integer
  end
end
