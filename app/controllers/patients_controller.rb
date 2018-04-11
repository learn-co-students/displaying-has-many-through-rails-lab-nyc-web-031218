class PatientsController < ApplicationController
  before_action :get_patient, only: [:show, :edit, :update, :destroy]

  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def show
  end

  def create
    @patient = Patient.create(patient_params)
    redirect_to @patient
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def get_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:name, :age)
  end
end
