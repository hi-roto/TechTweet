class ApplicationController < ActionController::Base
  before_action :devise_add_permitted_parameters, if: :devise_controller?

  private
  def devise_add_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end
end
