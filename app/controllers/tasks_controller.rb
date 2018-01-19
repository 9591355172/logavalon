 class TasksController < ApplicationController
 	before_action :validate_user, :only => [:show]

  def create
  	params[:task][:what_to_do].each_line.each do |task|
			Task.create(what_to_do: task, user_id: current_user.id, date: Time.now.strftime("%d/%m/%Y"))
  	end
  	redirect_to root_path

	
  end

 
  def show
  	
  	@task = Task.find(params[:id])
  	created = @task.created_at
	updated = @task.updated_at
	@minutes = ((updated - created)/3600).to_f
	@minute = @minutes.round(2)
		# if(logged_in?(:manager) && current_user.id != @user.id)
		# 	redirect_to root_path
		# end
		# @tasks = @user.tasks
	 #  	@dates = @tasks.order(:date).group(:date).count
	 #  	@tasks_perday = @tasks.where(date: Time.now.strftime("%d/%m/%Y"))
  end
 
	def update
		@task = Task.find(params[:id])

		if(@task.update!(params.require(:task)
								.permit(:what_done, :what_to_do)
								.merge(:user_id => current_user.id,
										:date => Time.now.strftime("%d/%m/%Y"))))
			redirect_to root_path
		else
			render plain: "error"
		end
	end


	def set_checkbox

		# task = Task.find(params[:task_id])
		
		# if(Department.task.find(task.id))
			if(task.checkbox == true)
				 task.update!(checkbox: false,completed: Time.now.strftime("%d/%m/%Y"))
	    	else
	    		task.update!(checkbox: true, completed: Time.now.strftime("%d/%m/%Y"))
	    	end


	end

	def validate_user

		@params_id = params[:id]
		@user_tasks = current_user.tasks
		unless @user_tasks.find_by(id: @params_id)
			flash[:alert] = "You are not allowed to view that page since you are not the user."
			redirect_to root_path
		end
	end

	
		
	
end
