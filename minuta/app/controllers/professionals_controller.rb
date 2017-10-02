class ProfessionalsController < ApplicationController
  before_action :set_professional, only: [:show, :edit, :update, :destroy]

  def index
    @professionals = Professional.all
  end

  def show
    id = params[:id]

    @professional = Professional.find(id)

  end

  def new
    @professional = Professional.new
  end

  def edit
    id = params[:id]

    @professional = Professional.find(id)

    Professional.current_scope = @professional
  end

  def create
    @professional = Professional.new(professional_params)

    if @professional.save
      flash[:success] = "Profissional criado com sucesso"
      redirect_to @professional
    else
      render 'new'
    end

  end

  def update

    if @professional.update(professional_params)
      flash[:now] = "Profissional alterado(a) com sucesso"
      redirect_to @professional
    else
      render 'edit'
    end
  end

  def destroy
    @professional = Professional.find(params[:id])
    @professional.destroy
    flash[:alert] = "Profissional excluído com sucesso"
    redirect_to professionals_path
  end

  private
    def set_professional
      @professional = Professional.find(params[:id])
    end

    def professional_params
      params.require(:professional).permit(:time, :date)
    end
end
