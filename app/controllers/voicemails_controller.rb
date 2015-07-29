class VoicemailsController < ApplicationController
  def index
    @voicemails = Voicemail.all
  end
  def create
    voicemail = Voicemail.create!(voicemail_params)
    render json: voicemail
  end

  def update
    voicemail = Voicemail.find(params[:id])
    voicemail.update!(voicemail_params)
    render json: voicemail
  end

private

  def voicemail_params
    body_data = JSON.parse(request.body.read)
    ActionController::Parameters.new(body_data).require(:voicemail).permit(:id, :client_id, :resolved, :out_of_area, :above_income, :needs_other, :no_docs, :time_with_call)
  end
end