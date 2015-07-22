class CreatePantryDays < ActiveRecord::Migration
  def change
    create_table :pantry_days do |t|
      t.datetime :date_time
      t.integer :num_volunteers
      t.integer :max_num_clients

      t.timestamps null: false
    end
  end
end
