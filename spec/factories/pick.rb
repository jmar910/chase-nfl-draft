FactoryGirl.define do
	factory :pick do
		round "1"
		sequence(:pick_no) { |n| "#{n}" }
		team
	end
end