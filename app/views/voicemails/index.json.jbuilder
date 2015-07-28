json.voicemails @voicemails do |voicemail|
  json.(voicemail.client, :first_name, :last_name, :display_phone, :account_number, :email)
  json.(voicemail, :id, :resolved, :out_of_area, :above_income, :needs_other, :no_docs, :time_with_call)
  json.notes voicemail.notes do |note|
    json.(note, :id, :info, :created_at)
  end
end