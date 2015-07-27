class ClientsController < ApplicationController
  def index
    @clients = Client.all.includes(:pantry_days)
  end

  def show
    id = params[:id]
    @client = Client.find(id)
  end
  
end