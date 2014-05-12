class CoursesController < ApplicationController
  before_filter :navbar
  before_filter :find_location
  before_filter :find_course, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @course = Course.new
  end

  def create
    if @course.save
      flash[:notice] = "A new course has been added to the site."
      redirect_to location_path(@location)
    else
      flash[:error] = "Please enter more info."
      render :new
    end
  end

  def edit
  end

  def update
    @course.update_attributes course_params
    redirect_to location_path(@location)
  end

  def destroy
    @course.delete
    redirect_to location_path(@location)
  end

private

  def navbar
    @locations = Location.all
    @courses = Course.all
  end

  def find_location
    @location = Location.find params[:location_id]
  end

  def find_course
    @course = Course.find params[:id]
  end

  def course_params
    params.require(:course).permit(:name, :description)
  end

end
