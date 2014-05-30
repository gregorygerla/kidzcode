class StudentsController < ApplicationController
	  require "#{Rails.root}/lib/Util.rb"
   	 include Util

	def new
		Util.current

		@student = Student.new
	end

	def create
		
		@student = Student.new(app_params)
		if @student.save
			p "working?"
			session[:student_id] = @student.id
			redirect_to user_steps_path
		else
			render 'new'
		end		
	end

	def show
		p "fuckkkkks"
	end

private
	def app_params
		params.require(:student).permit(:first_name,:last_name, :age,:skill_level,:email,:password,:password_confirmation)
	end
end	

