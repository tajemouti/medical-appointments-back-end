require 'swagger_helper'

RSpec.describe 'api/v1/users', type: :request do

  path '/api/v1/users' do

    post('create user') do
      consumes 'application/json'
      parameter name: :user_params, in: :body, schema: {
        type: :object,
        properties: {
          user: {
            username: { type: :string },
            password: { type: :string }
          }
        },
        required: ['username', 'password']
      }

      response '200', 'successful' do
        let(:user_params) { FactoryBot.attributes_for(:user) }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end

      response '422', 'unprocessable entity' do
        let(:user_params) { { username: nil, password: nil } }
        run_test!
      end
    end
  end
end
