class PantryDay < ActiveRecord::Base
  has_many :appointments
  validates_presence_of :num_volunteers, :max_num_clients
end
