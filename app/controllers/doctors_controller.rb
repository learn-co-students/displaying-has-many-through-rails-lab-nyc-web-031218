class DoctorsController < ActionController::Base

  def show
    @doctor = Doctor.find(params[:id])
  end

  def index
    @doctors = Doctor.all
  end

end
