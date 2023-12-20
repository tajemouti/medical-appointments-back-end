class Api::V1::AppointmentsController < ApplicationController
  before_action :authorize_request

  def index
    @appointments = @current_user.appointments.includes(:doctor)
    render json: @appointments.as_json(methods: :doctor_name)
  end

  def create
    @appointment = Appointment.new(appointment_params.merge(user: @current_user))

    if @appointment.save
      render json: @appointment, status: :created
    else
      render json: { errors: @appointment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @appointment = @current_user.appointments.find(params[:id])
    render json: @appointment
  end

  def destroy
    @appointment = @current_user.appointments.find(params[:id])

    if @appointment.destroy
      render json: { message: 'Appointment deleted successfully.' }
    else
      render json: { errors: @appointment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:appointment_time, :doctor_id, :city)
  end
end
