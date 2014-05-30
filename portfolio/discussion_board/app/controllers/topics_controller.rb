class TopicsController < ApplicationController
  before_filter :navigation
  before_filter :find_forum
  before_filter :find_topic, only: [:show, :edit, :update, :destroy]

  def new
    authorize! :create, Topic
    @topic = Topic.new
    @post = @topic.posts.new
  end

  def index
    authorize! :read, Topic
    @topics = @forum.topics.accessible_by(current_ability, :read)
  end

  def create
    authorize! :create, Topic
    @topic = @forum.topics.new topic_params.merge(user_id: current_user.id, last_post_at: DateTime.now)
    if @topic.save
      # @post = @topic.posts.create post_params[:topic][:posts]
      flash[:notice] = "You just made a new topic!"
      redirect_to forum_path(@forum)
    else
      flash[:error] = "Please enter a little more information..."
      render :new
    end
  end

  def show
    authorize! :read, Topic
    @topics = @forum.topics.all.accessible_by(current_ability, :read)
  end

  def destroy
    authorize! :destroy, Topic
    @topic.delete
    redirect_to forum_path(@forum)
  end

private

  def navigation
    @forums = Forum.all
  end

  def topic_params
    params.require(:topic).permit(:name, :last_poster_id, :forum_id, :user_id, :last_post_at,
    posts_attributes: [:id, :content, :topic_id, :user_id ])
  end

  def find_topic
    @topic = @forum.topics.find params[:id]
  end

  def find_forum
    @forum = Forum.find params[:forum_id]
  end

end
