class AddUtilitiesToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :utilities, :boolean
  end
end
