class RemoveColumnFromAppointments < ActiveRecord::Migration
  def change
    remove_column :appointments, :client_id, :datetime
  end
end
