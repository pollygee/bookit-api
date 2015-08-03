class ClientsController < ApplicationController
  def index
    @clients = Client.all.includes(:pantry_days).order(:last_name)
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
    search_terms = params[:q]
    clients = Client.efind search_terms
    # split_search = search_terms.split(" ")
    # clients = Client.where(first_name: split_search[0], last_name: split_search[1], display_phone: split_search[2])
    # clients = Client.search(params[:q])
    render json: clients
  end

private

  def client_params
    body_data = JSON.parse(request.body.read)
    ActionController::Parameters.new(body_data).require(:client).permit(:id, :first_name, :last_name, :address, :zip, :display_phone, :data_phone, :county, :family_size, :account_number, :email)
  end
end