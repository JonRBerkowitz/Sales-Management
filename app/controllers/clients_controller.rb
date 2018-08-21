class ClientsController < ApplicationController

  def index
    if params[:user_id]
      @clients = User.find(params[:user_id]).clients
    else
      redirect_to current_user
    end
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    @user = current_user

    if @client.save
      @user.clients << @client
      redirect_to @user
    else
      redirect_to new_client_path
    end
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    if @client.update(client_params)
      redirect_to @client
    else
      redirect_to edit_client_path(@client)
    end
  end

  def show
    @user = current_user
    @client = Client.find(params[:id])
    unless current_user.clients.include?(@client)
      redirect_to user_clients_path
    end
  end

  private

  def client_params
    params.require(:client).permit(:name)
  end

end
