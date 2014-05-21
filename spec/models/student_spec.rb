
require 'spec_helper'
describe Student do
	its(:skill_level) {should == 0}
	describe "#level_up" do
	it "should start with 0" do
	expect(subject.skill_level).to eql(0)
	end

	it "should increase skill by 1" do
	   expect{subject.level_up}.to change{subject.skill_level}.by(1)
		end
	end

	context 'validations' do
		it {should validate_presence_of(:age)}
	end
  	   it {should respond_to(:first_name)}
  	it { should respond_to(:first_name)}
  	its(:first_name) {should == nil}
  	context "new student" do
  		subject{Student.create(age:12)}
  		its(:age) {should == 12}
  	end
  	context "new name" do
  	let(:greg){Student.create(first_name:"greg")}
  	subject{greg}
  	its(:first_name){should == "greg"}
  	end
end

describe "level_up" do
	greg = Student.create(age:5)
	p greg
	it "should increase skill by 1" do
	  expect{greg.level_up}.to change{greg.skill_level}.by(1)
	end
end