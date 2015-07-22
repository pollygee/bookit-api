class AddTimeWithCallToVoicemails < ActiveRecord::Migration
  def change
    add_column :voicemails, :time_with_call, :integer, default: 0
  end
end
