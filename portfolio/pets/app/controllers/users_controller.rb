class UsersController < ApplicationController
  before_filter :find_user

  def show
    @user = User.find(params[:id])
  end

  def account_settings
    @user = User.find(params[:id])
  end

  def create
    @user = User.create( user_params )
  end

  def edit
  end

  def update
    @user.update_attributes user_params
    redirect_to user_path(@user)
  end

private

  def user_params
    params.require(:user).permit(:avatar)
  end

  def find_user
    @user = User.find params[:id]
  end

end
