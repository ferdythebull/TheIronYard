class HomeController < ApplicationController
  def index
    @hospitals = Hospital.all
    @patients = Patient.all
    @medications = Medication.all

  end
end
