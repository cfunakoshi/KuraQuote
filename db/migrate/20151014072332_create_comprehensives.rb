class CreateComprehensives < ActiveRecord::Migration
  def change
    create_table :comprehensives do |t|
      t.integer :deductible
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
