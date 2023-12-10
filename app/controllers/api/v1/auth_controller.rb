class Api::v1::AuthController < ApplicationController
    def login
        user = User.find_by(username: params[:username])
  
        if user&.authenticate(params[:password])
          token = user.generate_jwt
          render json: { token: token }
        else
          head :unauthorized
        end
    end
end
