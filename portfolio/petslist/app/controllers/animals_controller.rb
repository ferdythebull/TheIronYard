class AnimalsController < ApplicationController
  before_filter :find_animal, only: [:show, :edit, :update, :destroy]

  def new
    @animal = Animal.new
  end

  def index
  end

  def create
    @animal = @shelter.animals.new animal_params
    if @animal.save
      flash[:notice] = "You just added a new animal."
    else
      flash[:error] = "Please enter a little more information..."
      render :new
    end
  end

  def show
    @images = @animal.images
    respond_to do |format|
      format.html # show.html.haml
      format.json { render json: @animal }
    end
  end

  def destroy
    @animal.delete
    redirect_to shelter_path(@shelter)
  end

private

  def find_animal
    @animal = @shelter.animals.find params[:id]
  end

end
