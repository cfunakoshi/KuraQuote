class RemoveLastnameFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :lastname, :string
  end
end
