require 'spec_helper'

describe PicksController do
	describe "GET #index" do
		it "populates the picks" do
			pick = create(:pick)
			get :index
			expect(assigns(:picks)).to eq([pick])
		end

		context "with query params for the round" do
			it "populates the picks with the chosen round number" do
				pick1 = create(:pick, round: 1)
				pick2 = create(:pick, round: 2)
				get :index, round: 1
				expect(assigns(:picks)).to eq([pick1])
			end
		end

		it "renders the index view" do 
			get :index
			expect(response).to render_template(:index)
		end
	end

	describe "GET #show" do
		let(:pick) { create(:pick) }
		it "populates the pick" do
			get :show, id: pick.id
			expect(assigns(:pick)).to eq(pick)
		end

		it "renders the show view" do 
			get :show, id: pick.id
			expect(response).to render_template(:show)
		end
	end

	describe "POST #pick_player" do
		let(:pick) { create(:pick) }
		let(:player) { create(:player) }
		it "acquires the selected player for the current pick" do
			put :pick_player, id: pick.id, player_id: player.id
			expect(pick.player).to eq(player)
		end

		it "redirects to the index" do 
			put :pick_player, id: pick.id, player_id: player.id
			expect(response).to redirect_to('/')
		end
	end

	describe "GET #draft_status" do
		it "renders the draft_status view" do
			get :draft_status
			expect(response).to render_template(:draft_status)
		end
	end
end