class UpdateAppointmentTableToUseUsers < ActiveRecord::Migration[5.1]
  def change
      change_table :appointments do |t|
          t.remove :patient_id
          t.integer :user_id
      end
  end
end
