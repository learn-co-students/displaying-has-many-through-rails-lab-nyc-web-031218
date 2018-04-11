class RemoveAppointmentdatetimeFromAppointments < ActiveRecord::Migration
  def change
    remove_column :appointments, :appointmentdatetime, :datetime
  end
end
