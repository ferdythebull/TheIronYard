class AnimalsController < ApplicationController
  before_action :authenticate_user!
  before_filter :find_shelter
  before_filter :find_animal, only: [:show, :edit, :update, :destroy]

  def new
    authorize! :create, Animal
    @animal = Animal.new
    @animal.images.build
  end

  def index
    authorize! :read, Animal
  end

  def create
    authorize! :create, Animal
    @animal = @shelter.animals.new (animal_params)
    if @animal.save
      flash[:notice] = "You just added a new animal."
      redirect_to shelter_path(@shelter)
    else
      flash[:error] = "Please enter a little more information..."
      render :new
    end
  end

  def show
    authorize! :read, Animal
    @images = @animal.images
    respond_to do |format|
      format.html # show.html.haml
      format.json { render json: @animal }
    end
  end

  def edit
    authorize! :update, Animal
  end

  def update
    authorize! :update, Animal
  end

  def destroy
    authorize! :destroy, Animal
    @animal.delete
    redirect_to shelter_path(@shelter)
  end

private

  def animal_params
    params.require(:animal).permit(:name, :description, :birthday, :personality, :color, :body_type, :trained, :sex, :size, :hair, :special_needs, :bonded_pair,:animal_group, :patterns, images_attributes: [:image])
  end

  def find_animal
    @animal = @shelter.animals.find params[:id]
  end

  def find_shelter
    @shelter = Shelter.find params[:shelter_id]
  end

end
