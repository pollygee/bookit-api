require 'test_helper'
require 'pry'

class AppointmentsControllerTest < ActionController::TestCase
  def test_appointments_can_be_created
    # PantryDay.create!(id: 1, date_time: DateTime.new(2015, 2, 3, 11), num_volunteers: 4, max_num_clients: 3)
    # post :create, item: { name: "Thing", price: 10 }
    assert_equal 0, Appointment.count
    post :create, appointment: { pantry_day_id: 5, client_id: 6 }
    assert_equal "200", response.code
    # response = JSON.parse(response.body)
    assert_equal 5, JSON.parse(response.body)["pantry_day_id"]
    assert_equal 1, Appointment.count
  end

  def test_appointment_can_be_updated
    Appointment.create!(id: 111, pantry_day_id: 3, client_id: 4)
    patch :update, id: 111, appointment: { showed: "true"}
  end
end