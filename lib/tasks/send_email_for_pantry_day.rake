namespace :mail do
  desc 'Generate Mailer for Pantry Day tomorrow'
  task :create => :environment do
    if Time.now.monday? || Time.now.wednesday? || Time.now.friday?
      midnight = Time.now.midnight
      tomorrow = Date.tomorrow.in_time_zone.change(hour: 11)
      email =PantryDayMailer.client_list_email PantryDay.where(date_time: tomorrow).first.clients
      email.deliver_now
    end
  end
end