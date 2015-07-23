class RemoveVoicemailFromClients < ActiveRecord::Migration
  def change
    remove_column :clients, :voicemail_id, :integer
  end
end
