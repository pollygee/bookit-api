class PantryDay < ActiveRecord::Base
  validates_presence_of :num_volunteers, :max_num_clients
  has_many :appointments
  has_many :clients, through: :appointments

  def open_slot
    max_num_clients > appointments.count
  end
end
