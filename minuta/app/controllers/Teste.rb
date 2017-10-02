class Task 
    
    def initialize(implementor)
        @implementor = implementor
    end
    
        # def do_task
        # 	raise "not impl"
        # end
        
    # def register
   #    	raise "not imple 2"	
    #end
end

class Service < Task 
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


# class Schedule < Task 
    
#     def do_task
#         puts(" realiza as devidas tarefas do agendamento")
#     end

#     def register()
#         # String service, time;
#        # int day;

#         puts("Qual serviço deseja agendar?")
#         service = gets
#         puts("Qual dia desse mes?")
#         day = gets
#         puts("Qual horario")
#         time = gets

#         if (Integer(day)>15)
#             puts("servico agendado")
#         else
#             puts("tente novamente")
#         end
#     end
	
# end

# class Rating < Task 
# 	def do_task
#         puts("  realiza as devidas tarefas de avaliacao")
#     end

#     def register
#     end

#     def tester
#         puts("NOTA 10000000000")
#     end
# end


class Person
	def do_task_it
		raise "not imple3"
	end
	def receive_task(task)
		raise "not imple4"
	end	
end

class Owner < Person 

    def do_task_it
        puts 'PROPRIETARIO'
    end

    def receive_task
       # @task_service=task
        puts("Qual serviço deseja cadastrar?")
        service = gets
        puts("quais dias da semana?")
        days = gets
        puts("SERVICO CADASTRADO , PARABENS")
    end

#    def Owner (Task task)
#        @task = task
#    end

#    def do_it
#        puts("\n Proprietario")
#        @task.do_task
#    end

#    def receive_task(Task task)
#        @task=task
#    end
end

# class Client < Person {
    
#     private Task task;

#     public Cliente(Task task){
#         this.task = task;
#     }

#     public Cliente(){}

#     public void doIt(){
#         puts("\n Cliente")
#         task.doTask();
#     }

#     public void receiveTask(Task task){
#         this.task = task;
#     }
# }

# class Employee 
#     include Person 

#     private Task task
    
#     def Employee (Task task)
#         @task = task
#     end

#     def do_it
#         puts("\n Funcionario")
#         @task.do_task
#     end

#     def receive_task(Task task)
#         @task=task
#     end
# end

service = Service.new(Owner.new)

# Drawing the rectangle with a drawing
# engine specific to a Mac computer.
service.register()