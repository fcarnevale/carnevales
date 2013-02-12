FactoryGirl.define do 
	factory :user do 
		name	  "Michael Hartl"
		email	  "michael@example.com"
		password  "foobar321"
		password_confirmation "foobar321"
	end
end