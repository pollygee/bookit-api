namespace :fakeAppmnt do 
  desc 'Make fake Appointments'
  task :create => :environment do
    20.times do 
      Appointment.create!(
        pantry_day_id: rand(1..5),
        client_id: rand(1..100)
        )
    end
  end
end