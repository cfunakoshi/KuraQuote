class ChangeActiveInCompanylist < ActiveRecord::Migration
  def change
    change_column :companylists, :active, :string
  end
end
