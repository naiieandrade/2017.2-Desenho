class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]

  def index
    @schedules = Schedule.all
  end

  def show
    id = params[:id]

    @schedule = Schedule.find(id)

  end

  def new
    @schedule = Schedule.new
  end

  def edit
    id = params[:id]

    @schedule = Schedule.find(id)

    Schedule.current_scope = @schedule
  end

  def create
    @schedule = Schedule.new(schedule_params)

    if @schedule.save
      flash[:success] = "Agendamento criado com sucesso"
      redirect_to @schedule
    else
      render 'new'
    end

  end

  def update

    if @schedule.update(schedule_params)
      flash[:now] = "Agendamento alterado com sucesso"
      redirect_to @schedule
    else
      render 'edit'
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    flash[:alert] = "Agendamento excluído com sucesso"
    redirect_to schedules_path
  end

  private
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    def schedule_params
      params.require(:schedule).permit(:time, :date)
    end
end
