class PatientsController < ActionController::Base

  def show
    @patient = Patient.find(params[:id])
  end

  def index
    @patients = Patient.all
  end

end
