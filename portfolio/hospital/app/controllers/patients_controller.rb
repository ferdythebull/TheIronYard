class PatientsController < ApplicationController
  before_filter :find_hospital
  before_filter :find_patient, only: [:show, :edit, :update, :waiting, :doctor, :xray, :surgery, :leaving, :pay, :email, :doctor_name, :add_doctor, :new_doctor, :discharge]

  def show
    @medications = Medication.all
    @hospitals = Hospital.all
    @doctors = Doctor.all
  end

  def new
    @hospitals = Hospital.all
    @patient= @hospital.patients.new
  end

  def create
    @patient = Patient.create patient_params
    if @patient.save
      flash[:notice] = "The patient has now been admitted into the waiting room!"
      redirect_to hospital_path(@hospital)
    else
      flash[:error] = "You were unsuccessful in admitting this patient."
      render :new
    end
  end

  def index
    @patients = if params[:q]
      @hospital.patients.search_names params[:q]
    else
      @hospital.patients.all
    end
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @patient.delete
    redirect_to hospital_patient_path(@hospital, @patient)
  end

  def edit
    @hospitals = Hospital.all
  end

  def update
    if @patient.update_attributes patient_params
      flash[:notice] = "The patient record has been updated successfuly."
      redirect_to hospital_patient_path(@hospital, @patient)
    else
      flash[:error] = "There was an error. Please re-enter the information."
      render :edit
    end
  end

  def waiting
    @patient.waiting!
    respond_to do |format|
      format.js
    end
  end

  def doctor
    @patient.doctor!
    respond_to do |format|
      format.js
    end
  end

  def xray
    @patient.xray!
    respond_to do |format|
      format.js
    end
  end

  def surgery
    @patient.surgery!
    respond_to do |format|
      format.js
    end
  end

  def pay
    @patient.pay!
    respond_to do |format|
      format.js
    end
  end

  def discharge
  end

  def leaving
    @patient.leaving!
    redirect_to discharge_hospital_patient_path(@hospital, @patient)
  end

  def doctor
    @patient.doctor!
    redirect_to hospital_path(@hospital)
  end

  def new_doctor
    @doctor = @patient.doctors.new
  end

  def add_doctor
    @doctor = @patient.doctors.create doctor_params
    redirect_to hospital_patient_path
  end

  def search_names
    @search_names = Patient.search_names params[:q]
  end

private
  def patient_params
    params.require(:patient).permit(:name, :age, :sex, :symptom, :email, :discharge_note, {hospital_ids: []})
  end

  def find_hospital
    @hospital = Hospital.find params[:hospital_id]
  end

  def find_patient
    @patient = Patient.find params[:id]
  end

  def doctor_params
    params.require(:doctor).permit(:name)
  end
end
