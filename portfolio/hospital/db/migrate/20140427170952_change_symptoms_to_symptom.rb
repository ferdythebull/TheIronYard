class ChangeSymptomsToSymptom < ActiveRecord::Migration
  def change
    rename_column :patients, :symptoms, :symptom
  end
end
