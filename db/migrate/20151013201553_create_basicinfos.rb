class CreateBasicinfos < ActiveRecord::Migration
  def change
    create_table :basicinfos do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.text :suffix
      t.text :home_phone
      t.text :work_phone
      t.text :mailing_address
      t.string :city
      t.string :state
      t.integer :zipcode

      t.timestamps null: false
    end
  end
end
