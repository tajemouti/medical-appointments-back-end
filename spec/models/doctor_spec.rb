require 'rails_helper'

RSpec.describe Doctor, type: :model do
  # test doctor validations
  describe 'validations' do
    it 'should be valid with valid credentials' do
      doctor = FactoryBot.create(:doctor)
      expect(doctor).to be_valid
    end

    it 'is not valid without a name' do
      doctor = Doctor.new(name: nil)
      expect(doctor).to_not be_valid
    end

    it 'is not valid without a picture' do
      doctor = Doctor.new(name: 'Dr. Smith', picture: nil, speciality: 'Cardiology', address: '123 Main St')
      expect(doctor).to_not be_valid
    end

    it 'is not valid without a speciality' do
      doctor = Doctor.new(name: 'Dr. Smith', picture: 'some_image.jpg', speciality: nil, address: '123 Main St')
      expect(doctor).to_not be_valid
    end

    it 'is not valid without an address' do
      doctor = Doctor.new(name: 'Dr. Smith', picture: 'some_image.jpg', speciality: 'Cardiology', address: nil)
      expect(doctor).to_not be_valid
    end
  end

  # test doctor associations
  describe 'associations' do
    it 'should destroy associated appointments' do
      doctor = FactoryBot.create(:doctor)
      FactoryBot.create_list(:appointment, 3, doctor:)

      expect { doctor.destroy }.to change { Appointment.count }.by(-3)
    end

    it 'should have many users through appointments' do
      doctor = FactoryBot.create(:doctor_with_appointments)
      expect(doctor.users.count).to eq(doctor.appointments.count)
    end
  end
end
