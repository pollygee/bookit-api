class VoicemailsController < ApplicationController
  def index
    @voicemails = Voicemail.all
  end
end