class ClientsController < ApplicationController
  def index
    @clients = Client.all.includes(:pantry_days)
  end

  def show
    id = params[:id]
    @client = Client.find(id)
  end
  
  def create
    client = Client.create!(client_params)
    render json: client
  end

  def update
    client = Client.find(params[:id])
    client.update!(client_params)
    render json: client
  end

  def search
    clients = Client.search(params[:q])
    render json: clients
  end

private

  def client_params
    params.require(:client).permit(:id, :first_name, :last_name, :address, :zip, :display_phone, :data_phone, :county, :family_size, :account_number, :email)
  end
end