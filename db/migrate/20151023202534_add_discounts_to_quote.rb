class AddDiscountsToQuote < ActiveRecord::Migration
  def change
    add_column :quotes, :discounts, :text
  end
end
