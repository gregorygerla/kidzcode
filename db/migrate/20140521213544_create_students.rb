class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.string :email
      t.string :password_digest
      t.string :parent_first_name
  		t.string :parent_last_name
  	  t.string :child_first_name
      t.string :child_last_name
  		t.string :phone_number
  		t.date :age
  		t.string :username
  		t.integer :overall_skill_level, :default => 0
  		t.timestamps 

    end
  end
end
