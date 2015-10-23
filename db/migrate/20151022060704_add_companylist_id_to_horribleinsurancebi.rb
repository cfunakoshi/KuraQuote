class AddCompanylistIdToHorribleinsurancebi < ActiveRecord::Migration
  def change
    add_column :horribleinsurancebis, :companylist_id, :integer
  end
end
