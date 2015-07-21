json.clients @clients do |client|
  json.(client, :first_name, :last_name, :address, :zip, :display_phone, :data_phone, :county, :family_size, :account_number, :email, :created_at, :updated_at)
end