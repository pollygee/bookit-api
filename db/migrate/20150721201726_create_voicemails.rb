class CreateVoicemails < ActiveRecord::Migration
  def change
    create_table :voicemails do |t|
      t.integer :client_id
      t.boolean :resolved, default: false
      t.boolean :out_of_area, default: false
      t.boolean :above_income, default: false
      t.boolean :needs_other, default: false
      t.boolean :no_docs, default: false

      t.timestamps null: false
    end
  end
end
