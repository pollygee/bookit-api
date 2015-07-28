class Client < ActiveRecord::Base
  has_many :appointments
  has_many :pantry_days, through: :appointments
  has_many :voicemails
  has_many :notes, through: :voicemails

  def next_allowable_appointment 
    if pantry_days.any?
      pantry_days.to_a.max_by(&:date_time).date_time + 28.days
    else
      Time.now
    end
  end
end
