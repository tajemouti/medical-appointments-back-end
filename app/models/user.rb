class User < ApplicationRecord
  has_secure_password

  has_many :appointments, dependent: :destroy
  has_many :doctors, through: :appointments

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

  def generate_jwt
    JWT.encode({ id:, exp: 365.day.from_now.to_i }, Rails.application.secret_key_base)
  end

  def self.from_jwt(token)
    decoded = JWT.decode(token, Rails.application.secret_key_base)[0]
    find(decoded['id'])
  end
end
