class UsersController < ApplicationController
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
    @user.images.build
  end

  def my_profile
    redirect_to user_url(current_user)
  end

  def edit
  end

private

  def user_params
    params.require(:user).permit(:name, :email, images_attributes: [:image])
  end

  def find_user
    @user = User.find params[:id]
  end

end
