json.appointments @appointments do |appointment|
  json.(appointment.pantry_day, :date_time, :num_volunteers, :max_num_clients)
  json.(appointment, :id, :showed, :pantry_day_id, :client_id, :utilities)
  json.(appointment.client, :first_name, :last_name, :address, :zip, :display_phone, :county, :family_size, :account_number, :email)
end