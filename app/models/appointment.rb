class Appointment < ActiveRecord::Base
  belongs_to :client
  belongs_to :pantry_day
  validates_presence_of :pantry_day_id
end
