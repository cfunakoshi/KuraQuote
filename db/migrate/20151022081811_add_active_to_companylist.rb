class AddActiveToCompanylist < ActiveRecord::Migration
  def change
    add_column :companylists, :active, :boolean
  end
end
