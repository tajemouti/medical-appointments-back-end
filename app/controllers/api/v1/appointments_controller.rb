class Api::V1::AppointmentsController < ApplicationController
    before_action :authorize_request

    def create
      @appointment = Appointment.new(appointment_params.merge(user: @current_user))
      
      if @appointment.save
        render json: @appointment, status: :created
      else
        render json: { errors: @appointment.errors.full_messages }, status: :unprocessable_entity
      end
    end

    private

    def appointment_params
      params.require(:appointment).permit(:appointment_time, :doctor_id)
    end
end
