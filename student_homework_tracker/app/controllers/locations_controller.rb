class LocationsController < ApplicationController
  before_filter :find_location, only: [:show, :edit, :update, :destroy]

  def index
    @locations = Location.all
  end

  def show
    # need the @locations because of the navigation bar
    @locations = Location.all
    @courses = Course.all
  end

  def new
    @locations = Location.all
    @location = Location.new
  end

  def create
    @location = Location.create location_params
    redirect_to locations_path
  end

  def edit
  end

  def update
    @location.update_attributes location_params
    redirect_to
  end

  def destroy
    @location.delete
    redirect_to root_path
  end

private

  def find_location
    @location = Location.find params[:id]
  end

  def location_params
    params.require(:location).permit(:street, :city, :state, :zipCode)
  end

end
