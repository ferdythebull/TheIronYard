class UsersController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_user, only: [:show, :edit, :update, :destroy, :account_settings, :photo, :password]

  def account_settings
  end

  def password
  end

  def show
    @images = @user.images
    respond_to do |format|
      format.html # show.html.haml
      format.json { render json: @user }
    end
  end

  def create
    @user = User.create( user_params)

    if @user.save
      self.current_user = @user
      @user.profile = Profile.new(zip: 10010, min_age: 18, max_age: 99, max_distance: 50, i_love: "", find_me_in: "", hometown: "", website: "", when_not_with_pet: "", why_you_should_read_my_reviews: "", second_favorite_website: "", last_great_book_read: "", my_first_concert: "", my_favorite_movie: "", my_last_meal: "", my_secret: "", my_recent_discovery: "", my_pets: "", my_favorite_breeds: "", my_favorite_place_to_go_walking: "", job: "")
      @user.detail = Detail.new
      @user.save
      flash[:errors] = ["Fill out your profile to get better matches."]
      redirect_to user_url(@user)
    else
      flash[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def new
    @user = User.new
  end

  def my_profile
    redirect_to user_url(current_user)
  end

  def edit
  end

private

  def user_params
    params.require(:user).permit(:image, :name, :email)
  end

  def find_user
    @user = User.find params[:id]
  end

end
