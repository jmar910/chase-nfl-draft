require 'spec_helper'

describe Team do
	it "will be valid with default factory data" do
		player = build(:player)
		expect(player).to be_valid
	end

	describe ".no_team" do
		it "will return a players with no team" do
			create_list(:player, 5)
			expect(Player.no_team.count).to eq(5)
		end
	end

	describe ".no_team_with_pos" do
		it "will return a list of player with no team of a given position" do
			player1 = create(:player)
			player2 = create(:player, position: "LB")
			player3 = create(:player, position: "LB")

			expect(Player.no_team_with_pos("QB").count).to eq(1)
			expect(Player.no_team_with_pos("LB").count).to eq(2)
		end
	end

end