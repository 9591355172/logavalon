task :save_unfinished_task => :environment do
	users = User.all
	users.each do |user|
		@tasks = user.tasks
		@previous_tasks = @tasks.where.not(date: Time.now.strftime("%d/%m/%Y"))
	  	@unfinished_tasks = @previous_tasks.where(checkbox: false)
	  	@unfinished_tasks.each do |unfinished_task|
  			Task.create(what_done: unfinished_task.what_to_do, what_to_do: "previousdate", user_id: user.id, date: Time.now.strftime("%d/%m/%Y"))
  		end	
  	end
end