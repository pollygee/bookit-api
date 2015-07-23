class PantryDaysController < ApplicationController
  def index
    @pantry_days = PantryDay.all
  end
end
