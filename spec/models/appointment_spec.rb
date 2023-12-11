require 'rails_helper'

RSpec.describe Appointment, type: :model do
  describe 'validations' do
    it 'should be valid with valid credentials' do
      appointment = FactoryBot.create(:appointment)
      expect(appointment).to be_valid
    end

    it 'is not valid without an appointment time' do
      appointment = Appointment.new(appointment_time: nil)
      expect(appointment).to_not be_valid
    end
  end

  describe 'associations' do
    it 'should belong to a user' do
      association = described_class.reflect_on_association(:user)
      expect(association.macro).to eq :belongs_to
    end

    it 'should belong to a doctor' do
      association = described_class.reflect_on_association(:doctor)
      expect(association.macro).to eq :belongs_to
    end
  end
end
