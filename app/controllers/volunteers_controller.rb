# frozen_string_literal: true

class VolunteersController < ApplicationController
  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.new(volunteer_params)

    if @volunteer.save
      HospitalService.send_data(@volunteer)

      redirect_to thanks_path
    else
      render :new
    end
  end

  def thanks; end

  private

  def volunteer_params
    params.require(:volunteer).permit(:first_name, :last_name, :phone_number, :insurance_carrier, :medical_id)
  end
end
