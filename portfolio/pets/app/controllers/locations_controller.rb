class LocationsController < ApplicationController
  before_filter :authenticate_user!
  # before_filter :find_user
  before_filter :find_location, only: [:show, :edit, :update, :destroy]

  def new
    authorize! :create, Location
    @location = Location.new
  end

  def create
    @location = Location.create location_params
    if @location.save
      flash[:notice] = "You just added a location."
      redirect_to root_path
    else
      flash[:error] = "Sorry, there was an error."
      render :new
    end
  end

  def edit
  end

  def update
    authorize! :update, Location
    @location.update_attributes location_params
    redirect_to user_path(@user)
  end

  def destroy
    authorize! :destroy, Location
    @location.delete
    redirect_to user_path(@user)
  end

private

  def find_location
    @location = Location.find params[:id]
  end

  def location_params
    params.require(:location).permit(:address, :latitude, :longitude)
  end

  # def find_user
  #   @user = User.find params[:user_id]
  # end

end
