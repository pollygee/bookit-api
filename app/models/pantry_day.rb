class PantryDay < ActiveRecord::Base
  validates_presence_of :num_volunteers, :max_num_clients
  belongs_to :appointment
end
