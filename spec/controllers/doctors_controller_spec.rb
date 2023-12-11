require 'rails_helper'

RSpec.describe Api::V1::DoctorsController, type: :controller do
  let(:user) { create(:user) }
  let(:token) { user.generate_jwt }

  before { request.headers['Authorization'] = "Bearer #{token}" }

  describe 'GET #index' do
    it 'returns a list of all doctors' do
      create_list(:doctor, 3)
      get :index
      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body).count).to eq(3)
    end
  end

  describe 'GET #show' do
    let(:doctor) { create(:doctor) }

    it 'returns the details of a specific doctor' do
      get :show, params: { id: doctor.id }
      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body)['id']).to eq(doctor.id)
    end
  end

  describe 'POST #create' do
    context 'with valid parameters' do
      it 'creates a new doctor' do
        post :create, params: { doctor: attributes_for(:doctor) }
        expect(response).to have_http_status(:created)
        expect(Doctor.count).to eq(1)
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new doctor and returns unprocessable_entity status' do
        post :create, params: { doctor: { name: nil, picture: nil, speciality: nil, address: nil } }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
