class CoursesController < ApplicationController
  before_filter :find_location, only: [:index, :show, :edit, :update, :destroy]
  before_filter :find_course, only: [:show, :edit, :update, :destroy]

  def index
    @courses = Course.all
    @assignments = Assignment.all
    puts @location.inspect
  end

  def show
  end

  def new
    @locations = Location.all
    @courses = Course.all
    @assignments = Assignment.all
    @course = Course.new
  end

  def create
    @course = Course.create course_params
    redirect_to location_courses_path
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
