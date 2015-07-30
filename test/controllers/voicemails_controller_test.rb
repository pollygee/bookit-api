require 'test_helper'

class VoicemailsControllerTest < ActionController::TestCase
  def test_voicemail_can_be_created
    u = create(:user)
    sign_in u
    assert_equal 0, Voicemail.count
    set_body voicemail: { client_id: 6 }
    post :create
    assert_equal "200", response.code
    assert_equal 6, JSON.parse(response.body)["client_id"]
    assert_equal 1, Voicemail.count
  end

  def test_voicemail_can_be_updated
    u = create(:user)
    sign_in u
    Voicemail.create!(id: 12, client_id: 4)
    assert_equal false, Voicemail.find(12).resolved
    set_body voicemail: { resolved: "true", out_of_area: "true"}
    patch :update, id: 12 
    assert_equal "200", response.code
    assert_equal 4, JSON.parse(response.body)["client_id"]
    assert_equal true, Voicemail.find(12).resolved
  end
end