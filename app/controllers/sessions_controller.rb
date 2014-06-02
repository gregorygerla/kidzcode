class SessionsController < ApplicationController
	def new 
		@student = Student.new
	end
	def create 
		p "hello?????"
		p params
		student = Student.find_by_email(params[:session][:email])
		if student && student.authenticate(params[:session][:password])
			session[:student_id] = student.id
			redirect_to root_url
		else
			flash.now.alert = "Incorrect Info. Please try again"
			render 'new'
		end
	end 

	def destroy
		p "good"
		p current_user
		p current_user.email
		debugger
		session[:student_id] = nil
		redirect_to root_url
	end
end