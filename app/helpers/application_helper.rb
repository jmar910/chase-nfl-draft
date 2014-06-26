module ApplicationHelper
	def player_or_choosing(pick)
		if pick.player.nil?
			"Not yet chosen"
		else
			pick.player.name
		end
	end

	def next_team_pick(pick)
		if pick.nil?
			"No Picks!"
		else
			pick.team.name
		end
	end

	def picked_player_pos(pick)
		if pick.player
			pick.player.position
		else
			""
		end
	end

	def acquire_link(pick)
		if pick.player
			link_to "Details", picks_show_path(pick)
		else
			link_to "Acquire", picks_show_path(pick)
		end
	end
end
