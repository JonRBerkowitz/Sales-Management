class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.integer :user_id
      t.integer :client_id
      t.datetime :appointment_date
      t.datetime :appointment_time
      t.timestamps
    end
  end
end
