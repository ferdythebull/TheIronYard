class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # before_filter :authenticate_user!

  before_filter :update_sanitized_params, if: :devise_controller?

  # include SessionsHelper
  # include UsersHelper
  # include ProfilesHelper

  def update_sanitized_params

    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:email, :password, :password_confirmation, :name, :user_type)}

    devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:email , :password, :password_confirmation, :current_password, :name)}
    
  end
end
