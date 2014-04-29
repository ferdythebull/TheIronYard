class Patient < ActiveRecord::Base
  has_many :medications
  has_many :join_tables
  has_many :hospitals, through: :join_tables
  has_many :doctors, as: :doctorable

  validates :name, presence: true
  validates :symptom, presence: true

  include Workflow
  workflow do
    state :waiting do
      event :doctor, transitions_to: :doctor
      event :xray, transitions_to: :xray
      event :surgery, transitions_to: :surgery
      event :leaving, transitions_to: :leaving
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
    state :leaving do
      event :discharge, transitions_to: :leaving
    end
  end
end