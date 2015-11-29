class ChangePideductibleTypeInCoverage < ActiveRecord::Migration
  def change
    change_column :coverages, :pideductible, :text
  end
end
