class LocationsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_location, only: [:show, :edit, :update, :destroy]

  def new
    authorize! :create, Location
    @location = Location.new
  end

  def create
    authorize! :create, Location
    @location = Location.new post_params.merge(user_id: current_user.id)
    if @post.save
      flash[:notice] = "You just added a location."
    else
      flash[:error] = "Sorry, there was an error."
      render :new
    end
  end

  def edit
    authorize! :update, Location
  end

  def update
    authorize! :update, Location
    @location.update_attributes post_params
    redirect_to user_path(@user)
  end

  def destroy
    authorize! :destroy, Location
    @location.delete
    redirect_to user_path(@user)
  end

private

def location_params
  params.require(:location).permit(:)
end

end
