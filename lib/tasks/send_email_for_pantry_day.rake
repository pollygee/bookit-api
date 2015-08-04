namespace :mail do
  desc 'Generate Mailer for Pantry Day tomorrow'
  task :create => :environment do
    if Time.now.monday? || Time.now.tuesday? || Time.now.wednesday? || Time.now.friday?
      tomorrow = Time.now.midnight..(Date.today + 1.day).midnight
      email =PantryDayMailer.client_list_email PantryDay.where(date_time: tomorrow).first.clients
      email.deliver_now
    end
  end
end