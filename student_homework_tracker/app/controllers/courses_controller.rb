class CoursesController < ApplicationController
  before_filter :find_course, only: [:show, :edit, :update, :destroy]

  def index
    :find_location
    @courses = Course.all
    @assignments = Assignment.all
    puts @location.inspect
  end

  def show
  end

  def new
    @courses = Course.all
    @course = Course.new
  end

  def create
    @course = @location.courses.create course_params
    redirect_to location_path(@location)
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

  def find_location
    @location = Location.find params[:id]
  end

  def find_course
    @course = Course.find params[:id]
  end

  def course_params
    params.require(:course).permit(:name, :description)
  end

end
