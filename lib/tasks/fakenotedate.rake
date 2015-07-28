namespace :fakenotedate do 
  desc 'Make fake times for notes'
  task :create => :environment do
    Note.where(created_at: nil).each do |m| 
      time = rand(1..240).hours.ago
      m.update! created_at: time
      m.update! updated_at: time
    end
  end
end

