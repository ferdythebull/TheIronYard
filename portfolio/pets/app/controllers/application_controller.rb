class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :update_sanitized_params, if: :devise_controller?

  def update_sanitized_params
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:email, :password, :password_confirmation, :first_name, :last_name, :zip_code, :birthday, :avatar, :nickname, :gender, :your_headline, :i_love, :find_me_in, :hometown, :website, :when_not_with_pet, :why_you_should_read_my_reviews, :second_favorite_website, :last_great_book_read, :my_first_concert, :my_favorite_movie, :my_last_meal, :my_secret, :my_recent_discovery, :my_pets, :my_favorite_breeds, :my_favorite_place_to_go_walking)}
    devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:email, :password, :password_confirmation, :first_name, :last_name,  :zip_code, :birthday, :current_password, :avatar, :nickname, :gender, :your_headline, :i_love, :find_me_in, :hometown, :website, :when_not_with_pet, :why_you_should_read_my_reviews, :second_favorite_website, :last_great_book_read, :my_first_concert, :my_favorite_movie, :my_last_meal, :my_secret, :my_recent_discovery, :my_pets, :my_favorite_breeds, :my_favorite_place_to_go_walking)}
  end
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
end
