require 'test_helper'

class PantryDaysControllerTest < ActionController::TestCase
  def test_pantry_day_can_be_created
    u = create(:user)
    sign_in u
    assert_equal 0, PantryDay.count
    post :create, pantry_day: { date_time: Time.now, num_volunteers: 4, max_num_clients: 3 }
    assert_equal "200", response.code
    assert_equal 4, JSON.parse(response.body)["num_volunteers"]
    assert_equal 1, PantryDay.count
  end

  def test_pantry_day_can_be_updated
    u = create(:user)
    sign_in u
    PantryDay.create!(id: 111, date_time: Time.now, num_volunteers: 4, max_num_clients: 3 )
    assert_equal 4, PantryDay.last.num_volunteers
    patch :update, id: 111, pantry_day: { num_volunteers: 8, max_num_clients: 6}
    assert_equal "200", response.code
    assert_equal 6, PantryDay.find(111).max_num_clients
    assert_equal 8, JSON.parse(response.body)["num_volunteers"]
  end
end