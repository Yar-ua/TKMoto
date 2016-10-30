class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?


  def after_sign_in_path_for(resource)
    bikes_path
  end


  def after_sign_out_path_for(resources_of_scope)
  	request.referrer
  end

  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) {|u| u.permit(:email, :username)}
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:email, :username, :password, :password_confirmation)}
  end

end
