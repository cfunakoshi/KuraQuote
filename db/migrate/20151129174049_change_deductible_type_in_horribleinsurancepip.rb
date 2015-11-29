class ChangeDeductibleTypeInHorribleinsurancepip < ActiveRecord::Migration
  def change
    change_column :horribleinsurancepips, :deductible, :text
  end
end
