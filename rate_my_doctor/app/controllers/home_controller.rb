class HomeController < ApplicationController
  before_filter :database

  def index
  end

private
  
  def database
    @locations = Location.all
    @doctors = Doctor.all
  end

end
