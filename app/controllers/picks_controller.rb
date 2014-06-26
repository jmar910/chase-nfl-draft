class PicksController < ApplicationController
	def index
		if params[:round]
			round = params[:round]
			@picks = Pick.includes(:team, :player).where(round: round)
		else
			@picks = Pick.includes(:team, :player)
		end
	end

	def show
		@pick = Pick.find(params[:id])
		@available_players = Player.no_team.order('name asc')
	end

	def pick_player
		player = Player.find(params[:player_id])
		@pick = Pick.find(params[:id])
		@pick.acquire(player)

		redirect_to action: :index
	end

	def draft_status
		@three_most_recent = Pick.three_most_recent
		@next_team_pick = Pick.next_team_pick
	end
end