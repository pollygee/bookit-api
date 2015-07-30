require 'test_helper'

class NotesControllerTest < ActionController::TestCase
  def test_note_can_be_created
    u = create(:user)
    sign_in u
    assert_equal 0, Note.count
    Voicemail.create!(id: 12, client_id: 4)
    set_body note: {info: "Left Voicemail"}
    post :create, voicemail_id: 12
    assert_equal "200", response.code
    assert_equal 12, JSON.parse(response.body)["voicemail_id"]
    assert_equal 1, Note.count
  end

  def test_note_can_be_updated
    u = create(:user)
    sign_in u
    Voicemail.create!(id: 12, client_id: 4)
    Note.create!(id: 3, voicemail_id: 12)
    assert_equal nil, Voicemail.find(12).notes.first.info
    set_body note: { info: "Left Voicemail"}
    patch :update, voicemail_id: 12, id: 3
    assert_equal "200", response.code
    assert_equal "Left Voicemail", Voicemail.find(12).notes.first.info
    assert_equal "Left Voicemail", JSON.parse(response.body)["info"]
  end
end