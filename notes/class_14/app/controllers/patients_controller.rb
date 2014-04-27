class PatientsController < ApplicationController
  before_filter :find_hospital
  before_filter :find_patient, only: [:show, :edit, :update, :waiting, :doctor, :xray, :surgery, :leaving, :pay, :discharge]

  def show
  end

  def new
    @patient= @hospital.patients.new
  end

  def create
    @patient = @hospital.patients.create patient_params
    success = @patient.save
    if success == true
      flash[:notice] = "The patient has now been admitted into the waiting room!"
      redirect_to hospital_patient_path(@hospital, @patient)
    else
      flash[:error] = "You were unsuccessful in admitting this patient."
      render :new
    end
  end

  def edit
  end

  def update
    success = @patient.update_attributes patient_params
    if success == true
      flash[:notice] = "The patient record has been updated successfuly."
      redirect_to hospital_patient_path(@hospital, @patient)
    else
      flash[:error] = "There was an error. Please re-enter the information."
      render :edit
    end
  end

  def waiting
    @patient.waiting!
    redirect_to hospital_path(@hospital)
  end

  def doctor
    @patient.doctor!
    redirect_to hospital_path(@hospital)
  end

  def xray
    @patient.xray!
    redirect_to hospital_path(@hospital)
  end

  def surgery
    @patient.surgery!
    redirect_to hospital_path(@hospital)
  end

  def pay
    @patient.pay!
    redirect_to hospital_path(@hospital)
  end

  def discharge
    success = @patient.update_attributes patient_params
    if success == true
      flash[:notice] = "The patient has been discharged successfully."
      redirect_to root_path
    else
      flash[:error] = "Please reenter the discharge summary."
      render :leaving
    end
  end

  def leaving
    @patient.discharge!
  end

private
  def patient_params
    params.require(:patient).permit(:name, :age, :sex, :symptom, :discharge_note)
  end

  def find_hospital
    @hospital = Hospital.find params[:hospital_id]
  end

  def find_patient
    @patient = Patient.find params[:id]
  end
end
