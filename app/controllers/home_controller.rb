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

   

end


