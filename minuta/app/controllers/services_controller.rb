class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  def index
    @services = Service.all
  end

  def show
    id = params[:id]

    @service = Service.find(id)

  end

  def new
    @service = Service.new
  end

  def edit
    id = params[:id]

    @service = Service.find(id)

    Service.current_scope = @service
  end

  def create
    @service = Service.new(service_params)

    if @service.save
      flash[:success] = "Serviço criado com sucesso"
      redirect_to @service
    else
      render 'new'
    end

  end

  def update

    if @service.update(service_params)
      flash[:now] = "Serviço alterado com sucesso"
      redirect_to @service
    else
      render 'edit'
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    flash[:alert] = "Serviço excluído com sucesso"
    redirect_to services_path
  end

  private
    def set_service
      @service = Service.find(params[:id])
    end

    def service_params
      params.require(:service).permit(:description, :price)
    end
end
