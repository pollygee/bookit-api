namespace :fake do
  desc 'Make fake stuff'
  task :create => :environment do
    100.times do
      whole_name = Faker::Name.name
      @first_name = whole_name.split[0]
      @last_name = whole_name.split[1]
      @display_phone = Faker::PhoneNumber.cell_phone
      Client.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        address: Faker::Address.street_address,
        zip: Faker::Address.zip,
        display_phone: @display_phone,
        data_phone: @display_phone.delete('(), -'),
        county: ['AA', 'PG', 'HO'].sample,
        family_size: ['1A', '1A, 1K', '1A, 2K', '1A, 3K', '1A, 4K', '1A, 5K', '2A, 1K', '2A, 2K', '2A, 3K', '2A, 5K', '3A, 2K', '4A, 6K'].sample,
        email: Faker::Internet.email
      )
    end
  end
end