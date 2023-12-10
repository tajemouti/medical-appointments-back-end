class Api::V1::DoctorsController < ApplicationController
    before_action :authorize_request

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

    def doctor_params
      params.require(:doctor).permit(:name, :picture, :speciality, :address)
    end
end
