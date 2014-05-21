require 'spec_helper'
describe StudentsController do
	let!(:student){FactoryGirl.attributes_for :student}
		let!(:student_new){FactoryGirl.create :student}

	context "#new" do
		it "should have a new student" do
			get :new
			expect(response).to be_success
		end
		it "renders the new template" do
			get :new
			expect(response).to render_template("new")
		end
	end
	context "#create" do
		it "should create a new student" do
			expect {post :create, :student => student
			}.to change{Student.count}.by(1)
		end
	end
	context "#show" do
		it "should have all the students" do
			get :show, id: student_new.id
			
		end
	end	
end
