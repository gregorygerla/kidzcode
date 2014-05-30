class StudentsController < ApplicationController

	def new
		@student = Student.new
	end

	def create
		p "WTF"
		p params[:student]
		p app_params
		p "*" * 50
		@student = Student.new(app_params)
		if @student.save
			p "working?"
			session[:student] = @student.id
			redirect_to user_steps_path
		else
			render 'new'
		end		
	end

	# def index
	# 	@students = Student.all
	# end
	def info

	end
	def show
		p "fuckkkkks"
	end
	
private
	def app_params
		params.require(:student).permit(:first_name,:last_name, :age,:skill_level,:email,:password,:password_confirmation)
	end
end	

