class TeamLeadController < ApplicationController
	access admin: :all,manager: :all
	def index
		@users=User.all
		@departments = Department.all
	end
		
	def show
		@user = User.find(params[:id])
		if(logged_in?(:manager) && current_user.id != @user.id)
			redirect_to root_path
		end
		@tasks = @user.tasks
	  	@dates = @tasks.order(:date).group(:date).count
	  	@tasks_perday = @tasks.where(date: Time.now.strftime("%d/%m/%Y"))
	end

	
end
