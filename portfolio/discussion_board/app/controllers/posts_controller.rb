class PostsController < ApplicationController
  before_filter :navigation
  before_filter :find_forum
  before_filter :find_topic
  before_filter :find_post, only: [:show, :edit, :update, :destroy]

  def new
    authorize! :create, Post
    @post = Post.new
  end

  def create
    authorize! :create, Post
    @post = @topic.posts.new post_params.merge(user_id: current_user.id)
    if @post.save
      flash[:notice] = "You just made a new topic!"
      redirect_to forum_topic_path(@forum, @topic)
    else
      flash[:error] = "Please enter a little more information..."
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
private
  def navigation
    @forums = Forum.all
    @topics = Topic.all
  end

  def post_params
    params.require(:post).permit(:content, :topic_id, :user_id)
  end

  def find_post
    @post = @topic.posts.find params[:id]
  end

  def find_forum
    @forum = Forum.find params[:forum_id]
  end

  def find_topic
    @topic = @forum.topics.find params[:topic_id]
  end
end
