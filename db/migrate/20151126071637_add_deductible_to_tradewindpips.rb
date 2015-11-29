class AddDeductibleToTradewindpips < ActiveRecord::Migration
  def change
    add_column :tradewindpips, :deductible, :integer
  end
end
