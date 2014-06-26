task :simulate_draft => :environment do
	Pick.all.each do |pick|
		pick.acquire(Player.no_team.sample)
	end
end