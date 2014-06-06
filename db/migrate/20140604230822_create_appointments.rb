class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
    	t.date     :date
    	t.datetime :hour
    	t.boolean :done
    	t.belongs_to :student
    end
  end
end
