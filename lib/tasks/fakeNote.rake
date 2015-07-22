namespace :fakeNote do 
  desc 'Make fake Notes'
  task :create => :environment do
    20.times do 
      Note.create!(
        voicemail_id: rand(1..20),
        info: (Faker::Lorem.sentences[0])
        )
    end
  end
end