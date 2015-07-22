class Client < ActiveRecord::Base
  has_many :appointments
  has_many :voicemails
  has_many :notes, through :voicemails
end
