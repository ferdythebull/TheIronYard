class HospitalMailer < ActionMailer::Base
  default from: "from@example.com"

  def new_hospital_mailer(patient)
    puts '*'*100
    puts patient.inspect
    @patient = patient
    mail(to: patient.email, subject: "You have been admitted to the hospital.")
  end
end
