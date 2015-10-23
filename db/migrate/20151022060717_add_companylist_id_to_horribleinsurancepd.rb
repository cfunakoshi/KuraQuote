class AddCompanylistIdToHorribleinsurancepd < ActiveRecord::Migration
  def change
    add_column :horribleinsurancepds, :companylist_id, :integer
  end
end
