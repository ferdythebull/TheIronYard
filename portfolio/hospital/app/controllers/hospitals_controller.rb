class HospitalsController < ApplicationController      
  before_filter :find_hospital, only: [:show, :edit, :update, :destroy, :add_doctor, :new_doctor, :search_names]

  def show
    @patients = @hospital.patients
    @patients_processing = @hospital.patients.where.not(workflow_state: 'leaving')
    puts @patients_processing.inspect
    @patients_completed = @hospital.patients.where(workflow_state: 'leaving')
  end

  def new
    @hospital = Hospital.new
  end

  def create
    @hospital = Hospital.create hospital_params
    if @hospital.save
      flash[:notice] = "A new hospital has been added."
      redirect_to root_path
    else
      flash[:error] = "Please try once more to create a hospital."
      render :new
    end
  end

  def edit
  end

  def update
    @hospital.update_attributes hospital_params
    redirect_to root_path
  end

  def destroy
    @hospital.delete
    redirect_to root_path
  end

  def new_doctor
    @doctor = @hospital.doctors.new
  end

  def add_doctor
    @doctor = @hospital.doctors.create doctor_params
    redirect_to hospital_path(@hospital)
  end

  def search_names
    @search_names = Patient.search_names params[:q]
  end

private

  def find_hospital
    @hospital = Hospital.find params[:id]
  end

  def hospital_params
    params.require(:hospital).permit(:name, :location)
  end

  def doctor_params
    params.require(:doctor).permit(:name)
  end
end