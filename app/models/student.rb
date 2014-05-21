class Student < ActiveRecord::Base 
	 # validates_presence_of :age

	 def self.level_up(student)
	 	student.skill_level = student.skill_level + 1
	 	student.save!
	 end
end