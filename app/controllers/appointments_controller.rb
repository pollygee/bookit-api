class AppointmentsController < ApplicationController
  def index
    @appointments= Appointment.all
  end

  def create
    appointment = Appointment.create!(appointment_params)
    render json: appointment
  end

  def update
    appointment = Appointment.find(params[:id])
    appointment.update!(appointment_params)
    render json: appointment
  end

private

  def appointment_params
    body_data = JSON.parse(request.body.read)
    ActionController::Parameters.new(body_data).require(:appointment).permit(:id, :pantry_day_id, :client_id, :showed)
  end
end