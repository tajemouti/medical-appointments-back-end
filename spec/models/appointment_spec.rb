require 'rails_helper'

RSpec.describe Appointment, type: :model do
    describe 'validations' do
      it 'should be valid with valid credentials' do
        appointment = FactoryBot.create(:appointment)
        expect(appointment).to be_valid
      end
    end
end
