class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # Devise shennanigans
  before_action :configure_registration_parameters, if: :devise_controller?

  protected

  def configure_registration_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:first_name, :last_name, :email, :password, :title, :studio, :city, :state)
    end
  end
end
