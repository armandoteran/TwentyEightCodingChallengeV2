class ApplicationController < ActionController::Base
  before_action :authenticate_patient!

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :date_of_birth, :state])
  end
end
