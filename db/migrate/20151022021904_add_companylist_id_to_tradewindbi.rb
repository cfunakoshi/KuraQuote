class AddCompanylistIdToTradewindbi < ActiveRecord::Migration
  def change
    add_column :tradewindbis, :companylist_id, :integer
  end
end
