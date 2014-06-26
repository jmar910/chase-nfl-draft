class Player < ActiveRecord::Base
	belongs_to :pick, inverse_of: :team

	validates :name, :position, presence: true

	def self.no_team 
		Player.where(pick_id: nil)
	end

	def self.no_team_with_pos(pos)
		Player.where(pick_id: nil, position: pos).order('name')
	end

end
