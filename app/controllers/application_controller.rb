class ApplicationController < ActionController::API
  def authorize_request
    header = request.headers['Authorization']
    header = header.split.last if header

    begin
      @decoded = JWT.decode(header, Rails.application.secret_key_base)[0]
      @current_user = User.find(@decoded['id'])
    rescue JWT::DecodeError
      head :unauthorized
    end
  end
end
