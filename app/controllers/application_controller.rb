class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
    devise_parameter_sanitizer.for(:sign_up) << :role
    devise_parameter_sanitizer.for(:account_update) << :role
    devise_parameter_sanitizer.for(:sign_up) << :isRealtor
    devise_parameter_sanitizer.for(:account_update) << :isRealtor
    devise_parameter_sanitizer.for(:sign_up) << :licenseId
    devise_parameter_sanitizer.for(:account_update) << :licenseId
  end
end
