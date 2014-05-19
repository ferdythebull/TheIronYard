class LocationsController < ApplicationController
  before_filter :navbar
  before_action :authenticate_user!
  before_filter :find_location, only: [:show, :edit, :update, :destroy]

  def index
    authorize! :read, Location
    @locations = Location.accessible_by(current_ability)
  end

  def show
    authorize! :read, Location
    @course = @location.courses.accessible_by(current_ability)
  end

  def new
    authorize! :create, Location
    @location = Location.new
  end

  def create
    authorize! :create, Location
    @location = Location.new location_params
    if @location.save
      flash[:notice] = "A new location has been added to The Iron Yard family."
      redirect_to locations_path
    else
      flash[:error] = "Please enter more information."
      render :new
    end
  end

  def edit
    authorize! :update, Location
  end

  def update
    authorize! :update, Location
    @location.update_attributes location_params
    redirect_to locations_path
  end

  def destroy
    authorize! :destroy, Location
    @location.delete
    redirect_to dashboard_path
  end

private

  def navbar
    @locations = Location.all
  end

  def find_location
    @location = Location.find params[:id]
  end

  def location_params
    params.require(:location).permit(:street, :city, :state, :zipCode, :phone_number)
  end

end
