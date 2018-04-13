class DoctorsController < ApplicationController

def index
  @doctors = Doctor.all
end

def show
  @doctor = Doctor.find(params[:id])
  @appointments = Appointment.all 
end

def new
  @doctor = Doctor.new
  @patients = Patient.all
end

def create
  @doctor = Doctor.create(doctor_params)
  redirect_to @doctor
end

def edit
  @doctor = Doctor.find(params[:id])
  @patients = Patient.all
end

def update

  @doctor = Doctor.update(doctor_params)
  redirect_to @doctor
end

def destroy
  Doctor.destroy(params[:id])
  redirect_to doctors_path
end

private

def doctor_params
  params.require(:doctor).permit(:name, :department, patient_ids: [])
end

end
