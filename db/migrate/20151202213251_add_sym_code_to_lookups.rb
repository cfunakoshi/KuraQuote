class AddSymCodeToLookups < ActiveRecord::Migration
  def change
    add_column :lookups, :sym_code, :integer
  end
end
