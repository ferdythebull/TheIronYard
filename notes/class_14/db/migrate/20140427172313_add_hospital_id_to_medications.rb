class AddHospitalIdToMedications < ActiveRecord::Migration
  def change
    add_column :medications, :hospital_id, :integer
  end
end
