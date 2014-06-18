class SheltersController < ApplicationController

  layout "shelters_map", only: :index

  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  before_action :set_shelter, only: [:show, :edit, :update, :destroy]

  def index
    if params[:search].present?
      @shelters = Shelter.near(params[:search], 3, order: :distance)
    else
      @shelters = Shelter.order("name asc")
    end
    @geojson = Array.new

    @shelters.each do |shelter|
      @geojson << {
        type: 'Feature',
        geometry: {
          type: 'Point',
          coordinates: [shelter.longitude, shelter.latitude]
        },
        properties: {
          id: shelter.id,
          name: shelter.name,
          address: shelter.address,
          city: shelter.city,
          state: shelter.state,
          zip_code: shelter.zip_code,
          main_url: shelter.main_url,
          :'marker-color' => '#FF8B00',
          :'marker-symbol' => 'embassy',
          :'marker-size' => 'large'
        }
      }
    end
    respond_to do |format|
      format.html
      format.json { render json: @geojson }
    end
  end

  def show
    @images = @shelter.images
    respond_to do |format|
      format.html #show.html.haml
      format.json { render json: @shelter }
    end
  end

  def new
    authorize! :create, Shelter
    @shelter = Shelter.new
    @shelter.images.build
  end

  def edit
    authorize! :update, Shelter
    @shelter.images.build
  end

  def create
    authorize! :create, Shelter
    @shelter = Shelter.new(shelter_params)

    respond_to do |format|
      if @shelter.save
        format.html { redirect_to @shelter, notice: 'Shelter was successfully created.' }
        format.json { render :show, status: :created, location: @shelter }
      else
        format.html { render :new }
        format.json { render json: @shelter.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    authorize! :update, Shelter
    @shelter.update_attributes shelter_params

    respond_to do |format|
      format.html { redirect_to @shelter, notice: 'Shelter was successfully updated.' }
      format.json { render :sheow, status: :created, location: @shelter }
    end
  end

  def destroy
    authorize! :destroy, Shelter
    @shelter.delete
    redirect_to shelters_path
  end

private
  
  def set_shelter
    @shelter = Shelter.find(params[:id])
  end

  def shelter_params
    params.require(:shelter).permit(:name, :address, :city, :state, :zip_code, :phone, :main_url, :latitude, :longitude, :description, images_attributes: [:image])
  end

end
