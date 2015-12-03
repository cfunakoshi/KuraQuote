class AddYearToLookup < ActiveRecord::Migration
  def change
    add_column :lookups, :year, :text
  end
end
