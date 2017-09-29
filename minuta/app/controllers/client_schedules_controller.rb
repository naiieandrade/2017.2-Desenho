class ClientSchedulesController < ApplicationController

  def new
    @client_schedule = ClientSchedule.new
    @client_schedule.client = Client.last
    @schedule = Schedule.find_by_id(params[:schedule_id])
    @client_schedule.schedule = @schedule
  end

  def create
    @client_schedule = ClientSchedule.new
    @client_schedule.client = Client.last
    @schedule = Schedule.find_by_id(params[:schedule_id])
    @client_schedule.schedule = @schedule

    if @client_schedule.save
      redirect_to schedules_path
      flash[:success] = "Você agendou este serviço!"
    else
      flash[:flash] = "Não foi possivel agendar este serviço!"
      redirect_to root_path
    end
  end

private
  def client_schedule_params
    params.require(:client_schedule).permit(:id, schedule_attributes: [:id, :time, :date])
  end
end
