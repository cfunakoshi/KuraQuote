class AddCompanylistIdToTradewindundermotor < ActiveRecord::Migration
  def change
    add_column :tradewindundermotors, :companylist_id, :integer
  end
end
