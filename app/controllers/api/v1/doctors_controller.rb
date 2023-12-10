class Api::V1::DoctorsController < ApplicationController
    before_action :authorize_request
    before_action :set_doctor, only: [:destroy]

    def index
      @doctors = Doctor.all
      render json: @doctors
    end

    def create
      @doctor = Doctor.new(doctor_params)

      if @doctor.save
        render json: @doctor, status: :created
      else
        render json: @doctor.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @doctor.destroy
      render json: { message: 'Doctor deleted successfully.' }
    end

    private

    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    def doctor_params
      params.require(:doctor).permit(:name, :picture, :speciality, :address)
    end
end
