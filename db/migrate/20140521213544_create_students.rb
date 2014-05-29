class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.string :first_name
  		t.string :last_name
  		t.string :email
  		t.string :phone_number
  		t.integer :age
  		t.string :username
  		t.string :password_digest
  		t.integer :overall_skill_level, :default => 0
  		t.timestamps 

    end
  end
end
