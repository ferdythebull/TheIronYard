class DoctorsController < ApplicationController
  before_filter :database
  before_filter :find_doctor, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new doctor_params
    if @doctor.save
      flash[:notice] = "A new doctor has been added to ratemydoctor.com."
      redirect_to root_path
    else
      flash[:error] = "Please enter more information."
      render :new
    end
  end

  def edit
  end

  def update
    @doctor.update_attributes doctor_params
    redirect_to doctors_path
  end

  def destroy
    @doctor.delete
    redirect_to root_path
  end

private

  def database
    @locations = Location.all
    @doctors = Doctor.all
  end

  def find_doctor
    @doctor = Doctor.find params[:id]
  end

  def doctor_params
    params.require(:doctor).permit(:name, :birth_date, :graduation_date, :university, :sex, :nationality, :created_at, :updated_at)
  end

end
