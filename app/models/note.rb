class Note < ActiveRecord::Base
  belongs_to :client
  belongs_to :voicemail
  validates_presence_of :voicemail_id
end
