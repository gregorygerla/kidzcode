class AddColumnsToStudents < ActiveRecord::Migration
  def change
  	add_column :students, :email, :string
  	add_column :students, :phone_number, :string
  end
end
