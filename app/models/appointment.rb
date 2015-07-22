class Appointment < ActiveRecord::Base
  belongs_to :client
  belongs_to :pantry_day
  validates_presense_of :date_time, :pantry_day_id
end
