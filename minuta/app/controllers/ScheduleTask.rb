class ScheduleTask < Task 
    
    def do_task
        @implementor.do_task_it
    end

    # def register()
    #     # String service, time;
    #    # int day;

    #     puts("Qual serviço deseja agendar?")
    #     service = gets
    #     puts("Qual dia desse mes?")
    #     day = gets
    #     puts("Qual horario")
    #     time = gets

    #     if (Integer(day)>15)
    #         puts("servico agendado")
    #     else
    #         puts("tente novamente")
    #     end
    # end
	
end