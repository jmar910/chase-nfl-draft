require 'csv'

namespace :import do
	task :players => :environment do
		players = CSV.new(File.open(Rails.root.join("players.csv")), headers: true)

		players.each do |player|
			Player.create!(name: player[0], position: player[1])
		end
	end

	task :teams => :environment do 
		teams = CSV.new(File.open(Rails.root.join("teams.csv")), headers: true)

		teams.each do |team|
			Team.create!(name: team[0].strip, division: team[1])
		end
	end

	task :picks => [:teams] do 
		picks = CSV.new(File.open(Rails.root.join("order.csv")), headers: true)

		picks.each do |pick|
			if pick[2] == "NY Giants"
				pick[2] = "New York Giants"
			elsif pick[2] == "NY Jets"
				pick[2] = "New York Jets"
			end
			
			team = Team.find_by(name: pick[2])
			Pick.create!(round: pick[0], pick_no: pick[1], team: team)
		end
	end

	task :all => [:players, :teams, :picks] do
	end
	
end