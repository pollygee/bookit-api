class PantryDaysController < ApplicationController
  def index
    @pantry_days = PantryDay.all
  end

  def create
    pantry_day = PantryDay.create!(pantry_day_params)
    render json: pantry_day
  end

  def update
    pantry_day = PantryDay.find(params[:id])
    pantry_day.update!(pantry_day_params)
    render json: pantry_day
  end

private

  def pantry_day_params
    params.require(:pantry_day).permit(:date_time, :num_volunteers, :max_num_clients)
  end
end
