class SubmissionsController < ApplicationController
  before_action :authenticate_user!
  before_filter :navbar
  before_filter :find_location
  before_filter :find_course
  before_filter :find_assignment
  before_filter :find_submission, only: [:show, :edit, :update, :destroy, :comment, :new_comment]

  def index
  end

  def show
  end

  def new
    @submission = Submission.new
  end

  def create
    @submission = @assignment.submissions.new submission_params.merge(user_id: current_user.id)
    if @submission.save
      flash[:notice] = "Thank you for the submission."
      redirect_to location_course_assignment_path(@location, @course, @assignment)
    else
      flash[:error] = "Please enter more info."
      render :new
    end
  end

  def update
    @submission.update_attributes submission_params
    redirect_to location_courses_path(@location, @course)
  end

  def edit
  end

  def destroy
    @assignment.delete
    redirect_to location_courses_path(@location, @course)
  end

  def comment
    @comment = @submission.comments.new
  end

  def new_comment
    @comment = @submission.comments.create comment_params
    redirect_to location_course_assignment_submission_path(@location, @course, @assignment, @submission)
  end

private

  def navbar
    @locations = Location.all
    @comments = @submission.comments.all
    @assignments = @course.assignments.all
    @submissions = @assignment.submissions.all
  end

  def submission_params
    params.require(:submission).permit(
      :workflow_state,
      :assignment_id,
      links_attributes: [:id, :links, :submission_id, :_destroy])
  end

  def find_location
    @location = Location.find params[:location_id]
  end

  def find_course
    @course = @location.courses.find params[:course_id]
  end

  def find_assignment
    @assignment = @course.assignments.find params[:assignment_id]
  end

  def find_submission
    @submission = @assignment.submissions.find params[:id]
  end

  def comment_params
    params.requre(:comment).permit(:comment)
  end

end
