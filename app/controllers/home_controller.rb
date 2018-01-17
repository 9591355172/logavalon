class HomeController < ApplicationController
	
	def index
		if (user_signed_in?)
      		 @user=current_user
     		 @tasks = current_user.tasks
     		 @date = @tasks.order(:date).group(:date)
     		 @dates = @date.where.not(completed: nil).count
     		 @tasks_perday = @tasks
     
  		else
  		  redirect_to new_user_session_path
 		 end
 	 end

	  def send_email
  		UserMailer.send_email.deliver_now
  		redirect_to root_path
	  end

    def validate_user
    @params_id = params[:id]
    @user_links = current_user.links
    unless @user_links.find_by(id: @params_id)
      flash[:alert] = "You are not allowed to view that page since you are not the user."
      redirect_to root_path
    end
  end

end


