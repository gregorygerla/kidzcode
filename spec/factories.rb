FactoryGirl.define  do
	factory :student do
		password "foobar"
		child_first_name "greg"
		email "greg@greg.com"
	end
end