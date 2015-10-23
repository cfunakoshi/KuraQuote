class AddCompanylistIdToTradewindunmotor < ActiveRecord::Migration
  def change
    add_column :tradewindunmotors, :companylist_id, :integer
  end
end
