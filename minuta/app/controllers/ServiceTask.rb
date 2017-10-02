class ServiceTask < TaskService
	def do_task
        #puts(" realiza as devidas tarefas dos serviços")
        @implementor.do_task_it
    end
    def register
      #  @task = Taks task   
        @implementor.receive_task     
        # puts("Qual serviço deseja cadastrar?")
        # service = gets
        # puts("quais dias da semana?")
        # days = gets
        # puts("SERVICO CADASTRADO , PARABENS")
    end
end