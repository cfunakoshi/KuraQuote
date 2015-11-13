class AddYearToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :year, :integer
  end
end
