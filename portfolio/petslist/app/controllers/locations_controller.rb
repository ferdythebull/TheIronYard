class LocationsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_location, only: [:show, :edit, :update, :destroy]

  def index
    if params[:search].present?
      @locations = Location.near(params[:search])
    else
      @locations = Location.all
    end
  end

  def show

  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.create location_params
    redirect_to locations_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

private
  
  def find_location
    @location = Location.find params[:id]
  end

  def location_params
    params.require(:location).permit(:address, :city, :state, :zip_code, :latitude, :longitude)
  end

end
