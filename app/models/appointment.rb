class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def time_string
    self.appointment_datetime.strftime("%B %d, %Y at %R")
  end

  def doctor_name
    self.doctor.name
  end

  def patient_name
    self.patient.name
  end
end
