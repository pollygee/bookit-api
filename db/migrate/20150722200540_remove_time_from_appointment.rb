class RemoveTimeFromAppointment < ActiveRecord::Migration
  def change
    remove_column :appointments, :date_time, :datetime
  end
end
