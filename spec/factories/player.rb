FactoryGirl.define do
	factory :player do
		sequence(:name) { |n| "Player #{n}" }
		position "QB"
		pick nil

		trait(:with_pick) do
	      pick
	    end
	end
end