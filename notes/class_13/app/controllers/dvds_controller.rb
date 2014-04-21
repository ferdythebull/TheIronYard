class DvdsController < ApplicationController
before_filter :find_dvd, only: [:show, :edit, :update, :destroy]

def show
end

def new
  @dvd = Dvd.new
end

def create
  @dvd = Dvd.new dvd_params
  if @dvd.save
    flash[:notice] = "You successfully saved this contact!"
    redirect_to root_path
  else
    flash[:error] = "You were unsuccessful saving this movie listing!"
  end
end

def edit
end

def update
  if @dvd.update_attributes dvd_params
    flash[:notice] = "You successfully updated this contact!"
    redirect_to root_path
  else
    flash[:error] = "You were unsuccessful updating this movie listing!"
    render :edit
  end
end

def destroy
  @dvd.delete
  redirect_to root_path
end

private
  def dvd_params
    params.require(:dvd).permit(:year, :genre, :title, :director, :star, :writer, :description)
  end

  def find_dvd
    @dvd = Dvd.find params[:id]
  end

end