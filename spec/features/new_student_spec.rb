require 'spec_helper'

feature "creating a new student" do 
	scenario "one new student" do
		visit new_student_path
		fill_in 'student_email', :with => 'g@ooo.com'
		fill_in 'student_password', :with => "ok"
		fill_in 'student_password_confirmation', :with => "ok"
		click_button('Continue')
		expect(page).to have_content "2"
	end
	scenario "home page has a logged in user", js: true do
		visit new_student_path
		fill_in 'student_email', :with => 'g@ooo.com'
		fill_in 'student_password', :with => "ok"
		fill_in 'student_password_confirmation', :with => "ok"
		click_button('Continue')
		click_link('Home')
		expect(page).to have_content "g@ooo.com"
	end
end

