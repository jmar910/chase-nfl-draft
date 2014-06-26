class PlayersController < ApplicationController
	def index
		if params[:position]
			position = params[:position]
			@players = Player.no_team_with_pos(position)
		else
			@players = Player.no_team
		end
	end
end