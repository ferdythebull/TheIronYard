class LocationsController < ApplicationController
  before_filter :database
  before_filter :find_location, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new location_params
    if @location.save
      flash[:notice] = "A new location has been added to ratemydoctor.com."
      redirect_to root_path
    else
      flash[:error] = "Please enter more information."
      render :new
    end
  end

  def edit
  end

  def update
    @location.update_attributes location_params
    redirect_to root_path
  end

  def destroy
    @location.delete
    redirect_to root_path
  end

private

  def database
    @locations = Location.all
  end

  def find_location
    @location = Location.find params[:id]
  end

  def location_params
    params.require(:location).permit(:street, :city, :state, :zip_code, :phone_number)
  end

end
