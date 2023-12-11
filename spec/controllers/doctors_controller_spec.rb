# spec/controllers/api/v1/doctors_controller_spec.rb

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
end
