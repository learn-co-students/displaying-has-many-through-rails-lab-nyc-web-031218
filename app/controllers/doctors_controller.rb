class DoctorsController < ApplicationController
  before_action :find_doctor, only: [:show]

  def index
    @doctors = Doctor.all
  end

  def show
  end

  private

  def doctor_params

  end

  def find_doctor
    @doctor = Doctor.find_by(params[:id])
  end

end
