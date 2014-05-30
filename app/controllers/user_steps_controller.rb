class UserStepsController < ApplicationController
	include Wicked::Wizard
	steps :personal, :social

	def show
		@student = Student.find 1
		render_wizard
	end
	def update
		p "the student sesssion:"
		p session[:student]
		@student = Student.find session[:student]
		p person_params
		p "BEEEEEEE"

		params[:student]
		@student.attributes = person_params
		p @student.attributes
		p @student.save
		p "SDFGSDFDSFGSDF"
		render_wizard @student
	end

	private

	def person_params
      params.require(:student).permit(:phone_number)
    end

    def finish_wizard_path
    	'/students/new'
    end
end