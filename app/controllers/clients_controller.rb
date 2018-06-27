class ClientsController < ApplicationController

  def index
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
      redirect_to '/new'
    end
  end

  def show
  end

  private

  def client_params
    params.require(:client).permit(:name)
  end

end
