class ProfilesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :require_correct_user!, only: [:create, :edit, :new, :update, :destroy]

  def show
  end

  def create
  end

  def new
  end

  def edit
    @profile = current_user.profile
  end

  def update
  end
end
