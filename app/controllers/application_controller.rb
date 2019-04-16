class ApplicationController < ActionController::Base

  before_action :authenticate_user!
 before_action :configure_permitted_parameters, if: :devise_controller?
  protected
 
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :first_name, :last_name, :role_id, :country_id, :state_id, :city_id, :start_date, :end_date, :monthly_charge, :image_id, :image])
  end


  
end 	