class DashboardController < ApplicationController
  before_filter :authenticate_user!
  before_filter :navbar


  def index
    authorize! :read, Location
  end

private

  def navbar
    @locations = Location.all
  end

end
