# frozen_string_literal: true

class RegistrationsController < ApplicationController
  before_action :set_registration, only: [:show, :update, :destroy]

  def index
    @registrations = Registration.all

    render json: @registrations
  end

  def show
    render json: @registration
  end

  def create
    @registration = Registration.new(registration_params)

    if @registration.save
      render json: @registration, status: :created
    else
      render json: @registration.errors, status: :unprocessable_entity
    end
  end

  def update
    if @registration.update(registration_params)
      head :no_content
    else
      render json: @registration.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @registration.destroy

    head :no_content
  end

  def set_registration
    @registration = Registration.find(params[:id])
  end
  private :set_registration

  # TODO: find out what should be within the permit parentheses
  def registration_params
    params.require(:registration).permit(:last_name, :phone)
  end
  private :registration_params
end
