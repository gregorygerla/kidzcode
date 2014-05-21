require 'spec_helper'
feature 'gets on page' do
	scenario "homepage has welcome" do
	visit root_path 
	expect(page).to have_content "Welcome to kids bootcamp"
	end

	scenario "can fill out form" do
	visit root_path
	fill_in :first_name, :with => "steve"
	fill_in :age, :with => 14
	click_on "submit"
	expect(page).to have_content "thank you for your interest"
	end


end
