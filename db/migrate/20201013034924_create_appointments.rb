class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :checkup
      t.date :scheduledate
      t.string :doctor
      t.string :create_by

      t.timestamps
    end
  end
end
