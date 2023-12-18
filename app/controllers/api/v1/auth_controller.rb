class Api::V1::AuthController < ApplicationController
  def login
    user = User.find_by(username: params[:username])

    if user&.authenticate(params[:password])
      token = user.generate_jwt
      render json: { user_id: user.id, username: user.username, token: }, status: :created
    else
      head :unauthorized
    end
  end
end
