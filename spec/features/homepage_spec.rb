require 'spec_helper'
feature 'gets on page' do
	scenario "homepage has welcome" do
	visit root_path 
	expect(page).to have_content "Welcome to kidz code"
	end

	scenario "can fill out more info form" do
	visit root_path
	click_on "Join Now!"
	expect(page).to have_content "First name"
	end

	
end
