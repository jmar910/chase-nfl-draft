require 'spec_helper'

describe TeamsController do
	describe "GET #index" do
		it "populates the teams" do
			team1 = create(:team)
			team2 = create(:team)
			get :index
			expect(assigns(:teams)).to eq([team1, team2])
		end

		it "renders the index view" do 
			get :index
			expect(response).to render_template(:index)
		end
	end

	describe "GET #show" do
		let(:team) { create(:team) }
		it "populates the team" do 
			get :show, id: team.id
			expect(assigns(:team)).to eq(team)
		end

		it "renders the show view" do 
			get :show, id: team.id
			expect(response).to render_template(:show)
		end
	end
end