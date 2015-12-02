class ChangeDeductibleInTradewindpip < ActiveRecord::Migration
  def change
    change_column :tradewindpips, :deductible, :text
  end
end
