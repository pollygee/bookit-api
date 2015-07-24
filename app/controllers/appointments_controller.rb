class AppointmentsController < ApplicationController
  def index
    @appointments= Appointment.all
  end

  def create
    appointment = Appointment.create!(appointments_params)
    render json: appointment
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update!(showed: params[:showed], pantry_day_id: params[:pantry_day_id], client_id: params[:client_id])
  end

private

  def appointments_params
    params.require(:appointments).permit(:pantry_day_id, :client_id, :showed)
  end
end