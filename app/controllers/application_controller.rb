class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # Devise shennanigans
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) do |user_params|
      user_params.permit(:first_name, :last_name, :email, :title, :studio, :city, :state)
    end
  end
end
