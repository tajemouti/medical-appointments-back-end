class Doctor < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :users, through: :appointments

  validates :name, presence: true
  validates :picture, presence: true
  validates :speciality, presence: true
  validates :address, presence: true
end
