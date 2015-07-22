class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :client_id
      t.datetime :date_time
      t.boolean :showed

      t.timestamps null: false
    end
  end
end
