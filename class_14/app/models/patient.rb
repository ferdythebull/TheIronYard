class Patient < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true, if: :patient_leaving

  def patient_leaving
    workflow_state == 'leaving'
  end

  include Workflow
  workflow do
    state :waiting do
      event :doctor, transitions_to: :doctor
      event :xray, transitions_to: :xray
      event :surgery, transitions_to: :surgery
      event :exit, transitions_to: :leaving
    end
    state :doctor do
      event :xray, transitions_to: :xray
      event :surgery, transitions_to: :surgery
      event :pay, transitions_to: :pay
    end
    state :xray do
      event :doctor, transitions_to: :doctor
      event :surgery, transitions_to: :surgery
      event :pay, transitions_to: :pay
    end
    state :surgery do
      event :doctor, transitions_to: :doctor
      event :xray, transitions_to: :xray
      event :pay, transitions_to: :pay
    end
    state :pay do
      event :leaving, transitions_to: :leaving
    end    
  end
end