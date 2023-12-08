class CreateAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_time
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :doctor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
