class AssignmentsController < ApplicationController
  before_filter :navbar
  before_filter :find_location
  before_filter :find_course
  before_filter :authenticate_user!
  before_filter :find_assignment, only: [:show, :edit, :update, :destroy, :comment, :new_comment]

  def show
    authorize! :read, Assignment
    authorize! :read, Submission
    @assignments = @course.assignments.all.accessible_by(current_ability, :read)
    @users = User.all.accessible_by(current_ability, :read)
    @submissions_incomplete = @assignment.submissions.where.not(workflow_state: "complete").accessible_by(current_ability, :read)
    @submission_completed = @assignment.submissions.where(workflow_state:"complete")
    @submissions = @assignment.submissions.all.accessible_by(current_ability, :read)
  end

  def new
    authorize! :create, Assignment
    authorize! :read, Submission
    @assignment = Assignment.new
  end

  def create
    authorize! :create, Assignment
    @assignment = @course.assignments.new assignment_params.merge(user_id: current_user.id)
    if @assignment.save
      flash[:notice] = "The assignment has been added to the website."
      redirect_to location_course_assignment_path(@location, @course, @assignment)
    else
      flash[:error] = "Please enter more info."
      render :new
    end
  end

  def edit
    authorize! :update, Assignment
  end

  def update
    authorize! :update, Assignment
    @assignment.update_attributes assignment_params
    redirect_to location_courses_path(@location, @course)
  end

  def destroy
    authorize! :destroy, Assignment
    @assignment.delete
    redirect_to location_courses_path(@location, @course)
  end

  def index
    authorize! :read, Assignment
    respond_to do |format|
      format.html { redirect_to location_course_path(@location, @course) }
      format.json { render json: @assignments }
    end
  end

  def comment
    @comment = @assignment.comments.new
    respond_to do |format|
      format.js
    end
  end

  def new_comment
    @comment = @assignment.comments.create comment_params.merge(user_id: current_user.id, name: current_user.name)
    respond_to do |format|
      format.js
    end
  end
  
private

  def navbar
    @locations = Location.all
    # @courses = @location.courses.all
    # @assignments = @course.assignments.all
    @users = User.all
    @comments = Comment.all
  end
  
  def find_location
    @location = Location.find params[:location_id]
  end

  def find_course
    @course = Course.find params[:course_id]
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
