class HomeController < ApplicationController
  before_filter :navbar
  before_action :authenticate_user!
  
  def index
    if user_signed_in?
      redirect_to :controller=>'dashboard', :action => 'index'
    else
      redirect_to new_user_session_path
    end
  end

private
  def navbar
    @locations = Location.all
    @courses = Course.all
  end

end
