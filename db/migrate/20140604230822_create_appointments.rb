class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
    	t.date     :date
    	t.datetime :hour
    	t.boolean :done
    end
  end
end
