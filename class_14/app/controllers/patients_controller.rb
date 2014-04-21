class PatientsController < ApplicationController
before_filter :find_patient, only: [:show, :edit, :update, :destroy, :waiting, :doctor, :xray, :pay, :surgery, :leaving, :billpay, :release]

  def show
  end

  def new
    @patient= Patient.new
  end

  def create
    @patient = Patient.create patient_params
    success = @patient.save
    if success == true
      flash[:notice] = "The patient has now been admitted into the waiting room!"
      redirect_to root_path
    else
      flash[:error] = "You were unsuccessful in admitting this patient."
      render :new
    end
  end

  def edit
  end

  def update
    @patient.update_attributes patient_params
    redirect_to root_path
  end

  def destroy
    @patient.delete
    redirect_to root_path
  end

  def waiting
    @patient.waiting!
    redirect_to root_path
  end

  def doctor
    @patient.doctor!
    redirect_to root_path
  end

  def xray
    @patient.xray!
    redirect_to root_path
  end

  def surgery
    @patient.surgery!
    redirect_to root_path
  end

  def pay
    @patient.pay!
    redirect_to root_path
  end

  def leaving
    @patient.leaving!
    redirect_to release_patient_path(@patient)
  end

private
  def patient_params
    params.require(:patient).permit(:name, :age, :sex, :symptoms)
  end

  def find_patient
    @patient = Patient.find params[:id]
  end
end
