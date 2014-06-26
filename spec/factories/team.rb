FactoryGirl.define do
	factory :team do
		sequence(:name) { |n| "Team #{n}" }
		division "Some division"
	end
end