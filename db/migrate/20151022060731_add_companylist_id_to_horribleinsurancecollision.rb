class AddCompanylistIdToHorribleinsurancecollision < ActiveRecord::Migration
  def change
    add_column :horribleinsurancecollisions, :companylist_id, :integer
  end
end
