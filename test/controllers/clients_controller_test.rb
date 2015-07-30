require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  def test_client_can_be_created
    u = create(:user)
    sign_in u
    assert_equal 0, Client.count
    set_body client: { first_name: "Bob", last_name: "Smith" }
    post :create
    assert_equal "200", response.code
    assert_equal "Bob", JSON.parse(response.body)["first_name"]
    assert_equal 1, Client.count
  end

  def test_client_can_be_updated
    u = create(:user)
    sign_in u
    Client.create!(id: 112, first_name: "Bob", last_name: "Smith")
    assert_equal nil, Client.find(112).family_size
    set_body client: { family_size: "2A, 1K", zip: "20724"}
    patch :update, id: 112
    assert_equal "200", response.code
    assert_equal "2A, 1K", JSON.parse(response.body)["family_size"]
    assert_equal "20724", Client.find(112).zip
  end
end