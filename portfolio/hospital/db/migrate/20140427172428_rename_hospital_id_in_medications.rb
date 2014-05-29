class RenameHospitalIdInMedications < ActiveRecord::Migration
  def change
    rename_column :medications, :hospital_id, :patient_id
  end
end
