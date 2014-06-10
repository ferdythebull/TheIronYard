class SheltersController < ApplicationController

  before_filter :authenticate_user!
  before_action :set_shelter, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @shelter = Shelter.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

private
  
  def set_shelter
    @shelter = Shelter.find(params[:id])
  end

  def shelter_params
    params.require(:shelter).permit(:name, :address, :city, :state, :zip_code, :phone, :main_url)
  end

end
