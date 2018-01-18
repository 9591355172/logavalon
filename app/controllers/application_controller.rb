class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user! ,:only => [:index, :show]
  before_action if: :devise_controller? 
  skip_before_action :verify_authenticity_token

  def own_item
    unless current_user == @item.user
       flash[:alert] = "You cannot Modify this item."
       redirect_to root_path
    end
  end

  def api_req?
  	request.format.json?
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :department_id])
    #devise_parameter_sanitizer.permit(:sign_up, keys: [:department_id])
  end

	
	
end
