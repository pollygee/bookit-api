require 'test_helper'

class AppointmentsControllerTest < ActionController::TestCase
  def test_appointments_can_be_created
    u = create(:user)
    login u
    assert_equal 0, Appointment.count
    post :create, appointment: { pantry_day_id: 5, client_id: 6 }
    assert_equal "200", response.code
    assert_equal 5, JSON.parse(response.body)["pantry_day_id"]
    assert_equal 1, Appointment.count
  end

  def test_appointment_can_be_updated
    u = create(:user)
    login u
    Appointment.create!(id: 111, pantry_day_id: 3, client_id: 4)
    assert_equal nil, Appointment.last.showed
    patch :update, id: 111, appointment: { showed: "true"}
    assert_equal "200", response.code
    assert_equal 111, Appointment.last.id
    assert_equal true, Appointment.last.showed
  end
end