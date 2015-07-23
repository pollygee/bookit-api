json.voicemails @voicemails do |voicemail|
  json.(voicemail.client, :first_name, :last_name, :display_phone, :account_number, :email)
  json.(voicemail, :resolved, :out_of_area, :above_income, :needs_other, :no_docs, :time_with_call)
  json.notes voicemail.notes do |note|
    json.info note.info
  end
end