class CreateAppointmentsTable < ActiveRecord::Migration[5.1]
  def change
      create_table :appointments do |t|
          t.integer :doctor_id
          t.integer :patient_id
          t.string :location
          t.integer :time
          t.string :reason
      end
  end
end
