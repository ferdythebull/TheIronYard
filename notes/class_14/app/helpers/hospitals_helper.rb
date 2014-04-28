module HospitalsHelper
  def workflow_links(patient)
    if patient.workflow_state == 'waiting'
      x = link_to "Doctor", doctor_hospital_patient_path(@hospital, patient), method: :patch
    end
  end
end
