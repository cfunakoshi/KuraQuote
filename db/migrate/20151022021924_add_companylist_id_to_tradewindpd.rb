class AddCompanylistIdToTradewindpd < ActiveRecord::Migration
  def change
    add_column :tradewindpds, :companylist_id, :integer
  end
end
