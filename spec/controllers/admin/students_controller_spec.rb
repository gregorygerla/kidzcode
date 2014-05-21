require 'spec_helper'

describe Admin::StudentsController do
	
	let!(:new_student){FactoryGirl.create :student}
	context "#indsfgdfgex" do
		it "should have all the students" do
			get :index
			expect(assigns(:students)).to eq([new_student])
		end
	end	
	context "#update" do
		
		# it "should have all the students" do
		# 	puts :show			
		# end	
		it "should return true" do
			 "the student id in spec"
			@greg = Student.create
			put :update, id: @greg.id
			expect(@greg.reload.skill_level). to eq(1)

		end
	end
end
	