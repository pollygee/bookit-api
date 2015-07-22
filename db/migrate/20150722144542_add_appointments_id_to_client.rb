class AddAppointmentsIdToClient < ActiveRecord::Migration
  def change
    add_column :clients, :appointment_id, :integer
  end
end
