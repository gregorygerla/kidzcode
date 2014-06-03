	require 'bcrypt'
class Student < ActiveRecord::Base 
	has_many :skills
	has_many :languages, through: :skills
	accepts_nested_attributes_for :skills

	has_secure_password
	validates :email, :presence => { :message => "Email cannot be blank" }
	validates :email, :uniqueness =>  { :message => "Email already exists" }
    # validates :password_digest, :presence => { "WHY" }
	 def self.level_up(student)
	 	student.skill_level = student.skill_level + 1
	 	student.save!
	 end
  
end