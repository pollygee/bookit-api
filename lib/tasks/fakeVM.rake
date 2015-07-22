namespace :fakeVM do 
  desc 'Make fake Voicemails'
  task :create => :environment do
    20.times do 
      Voicemail.create!(
        client_id: rand(1..100)
        )
    end
  end
end