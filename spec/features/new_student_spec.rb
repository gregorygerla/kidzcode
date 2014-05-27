require 'spec_helper'

feature "creating a new student" do 
	scenario "one new student" do
		visit new_student_path
		expect(page).to have_content "First name"

	end
end