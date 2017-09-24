class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  def index
    @clients = Client.all
  end

  def show
    id = params[:id]

    @client = Client.find(id)

  end

  def new
    @client = Client.new
  end

  def edit
    id = params[:id]

    @client = Client.find(id)

    Client.current_scope = @client
  end

  def create
    @client = Client.new(client_params)

    if @client.save
      flash[:success] = "Cliente criado(a) com sucesso"
      redirect_to @client
    else
      render 'new'
    end
    
  end

  def update
    
    if @client.update(client_params)
      flash[:notice] = "Cliente alterado(a) com sucesso"
      redirect_to @client
    else
      render 'edit'
    end    
  end

  def destroy
    @client.destroy
      flash[:notice] = "Cliente excluido(a) com sucesso"
      redirect_to clients_url
  end

  private
    def set_client
      @client = Client.find(params[:id])
    end

    def client_params
      params.require(:client).permit(:name_client, :birth_date, :cpf, :phone_client, :email_client, :password_client)
    end
end
