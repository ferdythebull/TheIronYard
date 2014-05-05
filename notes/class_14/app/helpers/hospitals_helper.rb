module HospitalsHelper
  def workflow_links(patient)
    if patient.workflow_state == 'waiting'
      a = link_to "Doctor", 'javascript:void(0);', class: "doctor manipulate_workflow", hospital_url: doctor_hospital_patient_path(@hospital, patient), method: :patch
      a += link_to "Xray", xray_hospital_patient_path(@hospital,patient), method: :patch
      a += link_to "Surgery", surgery_hospital_patient_path(@hospital, patient), method: :patch
      a += link_to "Leaving", leaving_hospital_patient_path(@hospital, patient), method: :patch
    elsif patient.workflow_state == 'doctor'
      s = link_to "Xray", xray_hospital_patient_path(@hospital, patient), method: :patch
      s += link_to "Surgery", surgery_hospital_patient_path(@hospital, patient), method: :patch
      s += link_to "Pay", pay_hospital_patient_path(@hospital, patient), method: :patch
    elsif patient.workflow_state == 'xray'
      d = link_to "Doctor", doctor_hospital_patient_path(@hospital, patient), method: :patch
      d += link_to "Surgery", surgery_hospital_patient_path(@hospital, patient), method: :patch
      d += link_to "Pay", pay_hospital_patient_path(@hospital, patient), method: :patch
    elsif patient.workflow_state == 'surgery'
      f = link_to "Doctor", doctor_hospital_patient_path(@hospital, patient), method: :patch
      f += link_to "Xray", xray_hospital_patient_path(@hospital, patient), method: :patch
      f += link_to "Pay", pay_hospital_patient_path(@hospital, patient), method: :patch
    elsif patient.workflow_state == 'pay'
      link_to "Check Out", leaving_hospital_patient_path(@hospital, patient), method: :patch
    end
  end
end
