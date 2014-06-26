class Pick < ActiveRecord::Base
	belongs_to :team, inverse_of: :picks
	has_one :player

	validates :round, :pick_no, :team, presence: true

	def acquire(player)
		self.player = player
	end

	def self.three_most_recent
		Pick.joins(:player).order('players.updated_at ASC').last(3)
	end

	def self.next_team_pick
		Pick.includes(:player).where(players: { pick_id: nil}).order('pick_no asc').first
	end
end
