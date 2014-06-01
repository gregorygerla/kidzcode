class UserStepsController < ApplicationController
	include Wicked::Wizard
	steps :personal

	def show
				p "this is the current user in show"
				p current_user

		@student = Student.find current_user
		@skill = Skill.new
		render_wizard
	end
	def update
		@student = Student.find current_user
		@student.attributes = person_params
		p @student.attributes
		p @student.save
		p @student
		render_wizard @student
	end

	private

	def person_params
      params.require(:student).permit(:phone_number,:student_first_name,:student_last_name,:age,:language)
    end

    def finish_wizard_path
    	'/students/new'
    end
end