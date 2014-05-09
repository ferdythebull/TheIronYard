class DashboardController < ApplicationController
  before_filter :authenticate_user!
  before_filter :navbar


  def index
  end

private

  def navbar
    @locations = Location.all
    @courses = Course.all
    @assignments = Assignment.all
  end

end
