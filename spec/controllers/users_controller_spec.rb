require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do
  describe 'POST #create' do
    context 'with valid parameters' do
      it 'creates a new user and returns a JWT token' do
        post :create, params: { user: { username: 'testuser', password: 'password123' } }
        expect(response).to have_http_status(:created)
        expect(JSON.parse(response.body)).to have_key('token')
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new user and returns unprocessable_entity status' do
        post :create, params: { user: { username: '', password: 'short' } }
        expect(response).to have_http_status(:unprocessable_entity)
      end

      it 'returns error messages in the response' do
        post :create, params: { user: { username: '', password: 'short' } }
        errors = JSON.parse(response.body)['errors']
        expect(errors).to be_an(Array)
        expect(errors).to include("Username can't be blank")
        expect(errors).to include('Password is too short (minimum is 6 characters)')
      end
    end
  end
end
