class ContactsController < ApplicationController

  def index
  end

  def new
    @contact = Contact.new
    @clients = current_user.clients
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to current_user
    else
      redirect_to '/new'
    end
  end

  def show
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :client_id)
  end

end
