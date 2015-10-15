class CreateCompanylists < ActiveRecord::Migration
  def change
    create_table :companylists do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
