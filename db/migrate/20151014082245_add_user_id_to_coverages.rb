class AddUserIdToCoverages < ActiveRecord::Migration
  def change
    add_column :coverages, :user_id, :integer
  end
end
