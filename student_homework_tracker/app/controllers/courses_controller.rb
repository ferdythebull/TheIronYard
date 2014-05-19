class CoursesController < ApplicationController
  before_filter :navbar
  before_filter :find_location
  before_filter :find_course, only: [:show, :edit, :update, :destroy]

  def index
    authorize! :read, Course
    @courses = @location.courses.all
    respond_to do |format|
      format.html { redirect_to location_course_path(@location) }
    end
  end

  def show
    authorize! :read, Course
    @courses = @location.courses.all.accessible_by(current_ability, :read)
  end

  def new
    authorize! :create, Course
    @course = Course.new
  end

  def create
    authorize! :create, Course
    @course = @location.courses.new course_params
    if @course.save
      flash[:notice] = "A new course has been added to the site."
      redirect_to location_path(@location)
    else
      flash[:error] = "Please enter more info."
      render :new
    end
  end

  def edit
    authorize! :update, Course
  end

  def update
    authorize! :update, Course
    @course.update_attributes course_params
    redirect_to location_path(@location)
  end

  def destroy
    authorize! :destroy, Course
    @course.delete
    redirect_to location_path(@location)
  end

private

  def navbar
    @locations = Location.all
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
