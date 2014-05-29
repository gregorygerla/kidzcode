	require 'bcrypt'
class Student < ActiveRecord::Base 
	has_many :skills
	has_many :languages, through: :skills
	has_secure_password
	validates :email, :presence => true,:uniqueness => true

	 def self.level_up(student)
	 	student.skill_level = student.skill_level + 1
	 	student.save!
	 end
  
end