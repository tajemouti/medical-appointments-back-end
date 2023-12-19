require 'rails_helper'

RSpec.describe Api::V1::AppointmentsController, type: :controller do
  let(:user) { create(:user) }
  let(:token) { user.generate_jwt }

  before { request.headers['Authorization'] = "Bearer #{token}" }

  describe 'GET #index' do
    it 'returns a list of user appointments' do
      create_list(:appointment, 3, user:)
      get :index
      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body).count).to eq(3)
    end
  end

  describe 'POST #create' do
    context 'with valid parameters' do
      let(:doctor) { create(:doctor) }

      it 'creates a new appointment' do
        post :create, params: { appointment: { appointment_time: DateTime.now, city: 'Nairobi', doctor_id: doctor.id } }
        expect(response).to have_http_status(:created)
        expect(Appointment.count).to eq(1)
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new appointment and returns unprocessable_entity status' do
        post :create, params: { appointment: { appointment_time: nil, doctor_id: nil } }
        expect(response).to have_http_status(:unprocessable_entity)
      end

      it 'returns error messages in the response' do
        post :create, params: { appointment: { appointment_time: nil, doctor_id: nil } }
        errors = JSON.parse(response.body)['errors']
        expect(errors).to be_an(Array)
        expect(errors).to include("Appointment time can't be blank")
        expect(errors).to include('Doctor must exist')
      end
    end
  end

  describe 'GET #show' do
    let(:appointment) { create(:appointment, user:) }

    it 'returns the details of a specific appointment' do
      get :show, params: { id: appointment.id }
      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body)['id']).to eq(appointment.id)
    end
  end

  describe 'DELETE #destroy' do
    let(:appointment) { create(:appointment, user:) }

    it 'deletes a specific appointment' do
      delete :destroy, params: { id: appointment.id }
      expect(response).to have_http_status(:ok)
      expect(Appointment.count).to eq(0)
    end
  end
end
