class Admin::StudentsController < ApplicationController

	def index
		
		p "IN THE INDEX"
		@students = Student.all
		 
	end

	def show
		p "fuckkkk"	
	end
	def update
		p "OMGGGG"
		@student = Student.find params[:id]
		
		 Student.level_up(@student)
		 render json: {level: @student.skill_level}
	end


end 