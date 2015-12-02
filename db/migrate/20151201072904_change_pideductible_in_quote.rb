class ChangePideductibleInQuote < ActiveRecord::Migration
  def change
    change_column :quotes, :pideductible, :text
  end
end
