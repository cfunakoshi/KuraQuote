class AddDeductibleToHorribleinsurancepip < ActiveRecord::Migration
  def change
    add_column :horribleinsurancepips, :deductible, :integer
  end
end
