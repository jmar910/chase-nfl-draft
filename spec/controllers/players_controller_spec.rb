require 'spec_helper'

describe PlayersController do
	describe "GET #index" do
		it "populates the players" do
			player = create(:player)
			get :index
			expect(assigns(:players)).to eq([player])
		end

		context "with query params for the position" do
			it "populates the players not associated with a team for the position" do
				player = create(:player)
				player2 = create(:player, position: "WR")
				get :index, position: "QB"
				expect(assigns(:players)).to eq([player])
			end
		end

		it "renders the index view" do 
			get :index
			expect(response).to render_template(:index)
		end
	end
end