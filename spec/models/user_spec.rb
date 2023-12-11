require 'rails_helper'

RSpec.describe User, type: :model do
  # test user validations
  describe 'validations' do
    it 'should be valid with valid credentials' do
      user = FactoryBot.create(:user)
      expect(user).to be_valid
    end

    it 'is not valid without a username' do
      user = User.new(username: nil)
      expect(user).to_not be_valid
    end

    it 'is not valid without a password' do
      user = User.new(username: 'example_user', password: nil)
      expect(user).to_not be_valid
    end

    it 'is not valid with a password less than 6 characters' do
      user = User.new(username: 'example_user', password: '12345')
      expect(user).to_not be_valid
    end
  end

  # test user associations
  describe 'associations' do
    it 'should destroy associated appointments' do
      user = FactoryBot.create(:user)
      FactoryBot.create_list(:appointment, 3, user:)

      expect { user.destroy }.to change { Appointment.count }.by(-3)
    end

    it 'should have many doctors through appointments' do
      user = FactoryBot.create(:user_with_appointments)
      expect(user.doctors.count).to eq(user.appointments.count)
    end
  end
end
