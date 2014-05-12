class AssignmentsController < ApplicationController
  before_filter :navbar
  before_filter :find_location
  before_filter :find_course
  before_filter :authenticate_user!
  before_filter :find_assignment, only: [:show, :edit, :update, :destroy, :comment,:new_comment]

  def show
  end

  def new
    @assignment = Assignment.new
  end

  def create
    @assignment = @course.assignments.new assignment_params
    if @assignment.save
      flash[:notice] = "The assignment has been added to the website."
      redirect_to location_course_assignment_path(@location, @course, @assignment)
    else
      flash[:error] = "Please enter more info."
      render :new
    end
  end

  def edit
  end

  def update
    @assignment.update_attributes assignment_params
    redirect_to location_courses_path(@location, @course)
  end

  def destroy
    @assignment.delete
    redirect_to location_courses_path(@location, @course)
  end

  def index
  end

  def comment
    @comment = @assignment.comments.new
  end

  def new_comment
    @comment = @assignment.comments.create comment_params
    redirect_to location_course_assignment_path(@location, @course, @assignment)
  end
  
private

  def navbar
    @locations = Location.all
    @courses = Course.all
    @assignments = Assignment.all
    @users = User.all
    @submissions = Submission.all
  end
  
  def find_location
    @location = Location.find params[:location_id]
  end

  def find_course
    @course = @courses.find params[:course_id]
  end

  def find_assignment
    @assignment = @course.assignments.find params[:id]
  end

  def assignment_params
    params.require(:assignment).permit(:title, :description, :due_date, :course_id)
  end

  def comment_params
    params.require(:comment).permit(:comment)
  end

end
