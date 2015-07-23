class RemoveAppointmentFromClients < ActiveRecord::Migration
  def change
    remove_column :clients, :appointment_id, :integer
  end
end
