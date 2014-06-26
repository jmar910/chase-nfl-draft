require 'spec_helper'

describe Team do
	it "will be valid with default factory data" do
		team = build(:team)
		expect(team).to be_valid
	end
end