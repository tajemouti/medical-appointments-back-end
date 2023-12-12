require 'swagger_helper'

RSpec.describe 'api/v1/auth', type: :request do
  path '/api/v1/login' do
    post('login auth') do
      consumes 'application/json'
      parameter name: :login_params, in: :body, schema: {
        type: :object,
        properties: {
          username: { type: :string },
          password: { type: :string }
        },
        required: %w[username password]
      }

      response '200', 'successful' do
        let(:user) { FactoryBot.create(:user) }
        let(:login_params) { { username: user.username, password: user.password } }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end

      response '401', 'unauthorized' do
        let(:login_params) { { username: 'nonexistent_user', password: 'invalid_password' } }
        run_test!
      end
    end
  end
end
