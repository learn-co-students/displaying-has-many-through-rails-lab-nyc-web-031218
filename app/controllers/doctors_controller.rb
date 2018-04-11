class DoctorsController < ApplicationController
  before_action :get_doctor, only: [:show, :edit, :update, :destroy]

  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def show
  end

  def create
    @doctor = Doctor.create(doctor_params)
    redirect_to @doctor
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def get_doctor
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:name, :age)
  end
end
