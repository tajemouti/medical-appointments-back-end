class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor

  validates :appointment_time, presence: true
  validates :city, presence: true

  def doctor_name
    doctor.name if doctor
  end
end
