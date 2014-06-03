
require 'spec_helper'
describe Student do
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  its(:child_first_name) {should be_nil}
  it { should respond_to(:child_first_name) }
  it {should respond_to(:child_last_name)}
 
  it { should_not be_valid }
  	describe "a new user" do
  		let!(:new_student){FactoryGirl.create :student}
  		subject{new_student}
  		it { should be_valid }
  		its(:child_first_name) {should be == "greg"}
  	end
  	describe "matching password success" do
  		let!(:new_student){Student.new(password: "greg", password_confirmation: "greg",email: "greg@greg.com" )}
  	  		subject { new_student }
  		it {should be_valid }
  	end
  	describe "mismatched password fail" do
  		let!(:new_student){Student.new(password: "gregg", password_confirmation: "greg",email:"greg@greg.com" )}
  	  		subject { new_student }
  		it {should_not be_valid }
  	end
  	describe "no entered password fail" do
  		let!(:new_student){Student.new(password: "", password_confirmation: "",email:"greg@greg.com" )}
  	  		subject { new_student }
  		it {should_not be_valid }
  	end
  	describe "duplicate email not valid" do
  		let!(:new_student){FactoryGirl.create :student}
  		let!(:other_student){Student.new(password: "me", password_confirmation: "me",email:"greg@greg.com" )}
  		subject {other_student}
  		it {should_not be_valid}

  	end
  	
	# it "should respond to last name" do
	# # @subject = Student.new
	# #  subject{@subject}
	#  subject.should respond_to(:last_name)
	#  should respond_to(:last_name)
	# end
	# it { should respond_to(:first_name) }
	# its(:first_name) { should be_nil}
	
    
	

	# it {subject.first_name.should == nil}
# 	describe "#level_up" do
# 	it "should start with 0" do
# 	expect(subject.skill_level).to eql(0)
# 	end
# 	it "should increase skill by 1" do
# 	   expect{subject.level_up}.to change{subject.skill_level}.by(1)
# 		end
# 	end

# 	context 'validations' do
# 		it {should validate_presence_of(:age)}
# 	end
#   	   it {should respond_to(:first_name)}
#   	it { should respond_to(:first_name)}
#   	its(:first_name) {should == nil}
#   	context "new student" do
#   		subject{Student.create(age:12)}
#   		its(:age) {should == 12}
#   	end
#   	context "new name" do
#   	let(:greg){Student.create(first_name:"greg")}
#   	subject{greg}
#   	its(:first_name){should == "greg"}
#   	end
# end

# describe "level_up" do
# 	greg = Student.create(age:5)
# 	p greg
# 	it "should increase skill by 1" do
# 	  expect{greg.level_up}.to change{greg.skill_level}.by(1)
# 	end
end