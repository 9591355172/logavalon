class DepartmentController < ApplicationController

	def create
    	@dept = Department.find(params[:id])
    	if @dept.save
        	redirect_to root_path, notice: "Successfully created."
    	else
     	    render :action => 'edit'
    	end
    end

	def change_time
		@departments = Department.find(params[:department][:id])
		if(@departments.update(params.require(:department)
								.permit(:timings, :timings_end)))
		redirect_to department_change_time_url	
		else
			render plain: "error"
		end
	end
	
	def show
		@departments = Department.all
	end

end
