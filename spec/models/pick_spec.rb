require 'spec_helper'

describe Team do
	it "will be valid with default factory data" do
		pick = build(:pick)
		expect(pick).to be_valid
	end

	describe "#acquire" do
		it "will acquire a player for this pick" do
			pick = create(:pick)
			player = create(:player)
			pick.acquire(player)
			expect(pick.player).to eq(player)
		end
	end

	describe ".three_most_recent" do
		it "will return the three most recent picks" do
			player1 = create(:player, :with_pick, updated_at: 5.minutes.ago)
			player2 = create(:player, :with_pick, updated_at: 10.minutes.ago)
			player3 = create(:player, :with_pick, updated_at: 3.minutes.ago)
			player4 = create(:player, :with_pick, updated_at: 1.minutes.ago)

			expect(Pick.three_most_recent).to eq([player1.pick, player3.pick, player4.pick])
		end
	end

	describe ".next_team_pick" do
		it "will return the next team to pick" do
			pick1 = create(:pick)
			pick2 = create(:pick)
			player = create(:player)

			pick1.acquire(player)

			expect(Pick.next_team_pick).to eq(pick2)
		end
	end
end

