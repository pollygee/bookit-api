class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :zip
      t.string :display_phone
      t.string :data_phone
      t.string :county
      t.string :family_size
      t.string :account_number
      t.string :email

      t.timestamps null: false
    end
  end
end
