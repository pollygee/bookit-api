class CreateTableNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :voicemail_id
      t.text :info
    end
  end
end
