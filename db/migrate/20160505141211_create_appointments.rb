class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :start_datetime, null: false
      t.string :duration, null: false
      t.integer :student_id
      t.integer :mentor_id, null: false

      t.timestamps null: false
    end
  end
end
