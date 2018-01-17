module HomeHelper
	def show_users_path_if_admin
		(if logged_in?(:admin, :manager)
			("Note: Our systems have detected that you are an admin. You can ") +
			(link_to "view all users", custom_users_path) +
			(" here <br>")
		else
			""
		end).html_safe
	end
	def current_time_exceeds_threshold
		if(Time.now.hour > 11)
			return true
		else
			return false
		end
	end
end
