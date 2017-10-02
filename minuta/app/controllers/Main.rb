class Main 
    Task task_owner = new Schedule
    Owner owner = new Owner(task_owner)
    @owner.do_it()

    task_owner = new Service
    @owner.receive_task(task_owner)
    @owner.do_it()
    task_owner.register()


end