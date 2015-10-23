class AddCompanylistIdToTradewindpip < ActiveRecord::Migration
  def change
    add_column :tradewindpips, :companylist_id, :integer
  end
end
