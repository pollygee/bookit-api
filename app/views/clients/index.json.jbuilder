json.clients @clients do |client|
  json.(client, :id, :active_client, :first_name, :last_name, :address, :zip, :display_phone, :data_phone, :county, :family_size, :account_number, :email, :created_at, :updated_at, :next_allowable_appointment)
  json.appointments client.appointments do |appointment|
    json.date appointment.pantry_day.date_time
    json.showed appointment.showed
  end
end