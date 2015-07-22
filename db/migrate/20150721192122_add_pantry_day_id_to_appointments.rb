class AddPantryDayIdToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :pantry_day_id, :integer
  end
end
