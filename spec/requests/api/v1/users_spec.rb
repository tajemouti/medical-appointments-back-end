require 'swagger_helper'

RSpec.describe 'api/v1/users', type: :request do
  path '/api/v1/users' do
    post('create user') do
      consumes 'application/json'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          username: { type: :string },
          password: { type: :string }
        },
        required: ['username', 'password']
      }

      response '201', 'resource created' do
        let(:user) { FactoryBot.build(:user) }

        before do
          post '/api/v1/users', params: { user: { username: user.username, password: user.password } }
        end

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
        let(:user) { FactoryBot.build(:user, password: 'short') }

        before do
          post '/api/v1/users', params: { user: { username: user.username, password: user.password } }
        end

        run_test!
      end
    end
  end
end
