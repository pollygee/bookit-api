json.voicemails @voicemails do |voicemail|
  json.client voicemail.client, :id, :active_client, :first_name, :last_name, :address, :zip, :county, :display_phone, :family_size, :next_allowable_appointment, :account_number, :email
  json.(voicemail, :id, :resolved, :out_of_area, :above_income, :needs_other, :no_docs, :time_with_call)
  json.notes voicemail.notes do |note|
    json.(note, :id, :info, :created_at)
  end
end