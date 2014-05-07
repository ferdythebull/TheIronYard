class LocationsController < ApplicationController
  before_filter :find_location, only: [:show, :edit, :update, :destroy]

  def show
    @locations = Location.all
  end

  def new
    @locations = Location.all
    @location = Location.new
  end

  def create
    @location = Location.create location_params
    redirect_to root_path
  end

  def edit
    @locations = Location.all
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
