class Team < ActiveRecord::Base
	has_many :picks
	has_many :players, through: :picks

	validates :name, :division, presence: true
end