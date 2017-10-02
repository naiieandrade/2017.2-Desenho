#require 'service/Task.rb'

class RatingTask < TaskService 
    def do_task
        #puts(" realiza as devidas tarefas dos serviços")
        @implementor.do_task_it
    end
    
    # def do_task
    #     puts("  realiza as devidas tarefas de avaliacao")
    # end

    # def register
    # end

    # def tester
    #     puts("NOTA 10000000000")
    # end
end