class NotesController < ApplicationController
  def index
    @notes = Notes.all
  end
  def create
    voicemail = Voicemail.find(params[:voicemail_id])
    note = voicemail.notes.create!(note_params)
    render json: note
  end

  def update
    note = Note.find(params[:id])
    note.update!(note_params)
    render json: note
  end

private

  def note_params
    body_data = JSON.parse(request.body.read)
    ActionController::Parameters.new(body_data).require(:note).permit(:info)
  end
end