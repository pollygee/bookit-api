class Voicemail < ActiveRecord::Base
  has_many :notes
  belongs_to :client
end
