json.pantry_days @pantry_days do |pantry_day|
  json.(pantry_day, :id, :date_time, :num_volunteers, :max_num_clients, :open_slot)
end