class AddVoicemailIdToClient < ActiveRecord::Migration
  def change
    add_column :clients, :voicemail_id, :integer
  end
end
