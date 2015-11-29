class CreatePideductibles < ActiveRecord::Migration
  def change
    create_table :pideductibles do |t|
      t.text :deductible

      t.timestamps null: false
    end
  end
end
