class ClientsController < ApplicationController
  def index
    @clients = Client.all.includes(:pantry_days)
  end
end