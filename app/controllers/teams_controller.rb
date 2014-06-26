class TeamsController < ApplicationController
	def index
		@teams = Team.includes(:players)
	end

	def show
		@team = Team.find(params[:id])
	end
end