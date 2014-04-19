class PatientsController < ApplicationController
before_filter :find_patient, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @patient= Patient.new
  end

  def create
    @patient = Patient.new patient_params
    if @patient.save
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
    if @patient.update_attributes patient_params
      flash[:notice] = "You successfully updated this patient listing!"
      redirect_to root_path
    else
      flash[:error] = "You were unsuccessful in updating this patient listing!"
      render :edit
    end
  end

  def destroy
    @patient.delete
    redirect_to root_path
  end

  def doctor
    @patient.doctor!
    redirect_to root_path
  end

private
  def patient_params
    params.require(:patient).permit(:name, :age, :sex, :symptoms)
  end

  def find_patient
    @patient = Patient.find params[:id]
  end
end
