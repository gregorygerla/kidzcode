class StudentsController < ApplicationController

	def new
		@student = Student.new
	end

	def create
		p "WTF"
		p params[:student]
		p "*" * 50
		@student = Student.create(app_params)
		redirect_to student_path(@student)
	end

	# def index
	# 	@students = Student.all
	# end

	def show
		p "fuckkkkks"
	end
	
private
	def app_params
		params.require(:student).permit(:first_name,:last_name, :age,:skill_level,:email)
	end
end	

