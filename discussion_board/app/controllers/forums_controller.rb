class ForumsController < ApplicationController
  before_action :authenticate_user!
  before_filter :navigation
  before_filter :find_forum, only: [:show, :edit, :update, :destroy]

  def index
    authorize! :read, Forum
    @forums = Forum.accessible_by(current_ability)
  end

  def show
    authorize! :read, Forum
  end

  def new
    authorize! :create, Forum
    @forum = Forum.new
  end

  def create
    authorize! :create, Forum
    @forum = Forum.new forum_params
    if @forum.save
      flash[:notice] = "A new forum has been created!"
      redirect_to forums_path
    else
      flash[:error] = "Please review your information."
    end
  end

  def edit
    authorize! :update, Forum
  end

  def update
    authorize! :update, Forum
    @forum.update_attributes forum_params
    redirect_to forums_path
  end

  def destroy
    authorize! :destroy, Forum
    @forum.delete
    redirect_to forums_path
  end

private
  def navigation
    @forums = Forum.all
  end

  def find_forum
    @forum = Forum.find params[:id]
  end

  def forum_params
    params.require(:forum).permit(:name, :description, :created_at, :updated_at)
  end
end
