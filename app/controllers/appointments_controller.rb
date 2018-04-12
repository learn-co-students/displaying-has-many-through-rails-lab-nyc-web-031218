class AppointmentsController < ApplicationController

  def index
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  private

  def appointments_params
  end


end
