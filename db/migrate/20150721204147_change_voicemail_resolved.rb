class ChangeVoicemailResolved < ActiveRecord::Migration
  def change
    change_column :voicemails, :resolved, :boolean, default: false
  end
end
