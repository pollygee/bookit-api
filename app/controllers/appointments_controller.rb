class AppointmentsController < ApplicationController
  def index
    @appointments= Appointment.all
  end

  def create
    Appointment.create!(pantry_day_id: params[pantry_day_id], client_id: params[client_id])
  end

end