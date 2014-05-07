class Roller

	require 'rubygems'
	require 'dicebag'

	def self.ability_scores
		scores = []
		dq = "1d6"
		dt = "1d12"
		7.times do
			dqRoll = DiceBag::Roll.new(dq)
			dtRoll = DiceBag::Roll.new(dt)
			case dqRoll.result.total
			when 1..3
				dieQuant = 1
			when 4..5
				dieQuant = 2
			when 6
				dieQuant = 3
			end
			case dtRoll.result.total
			when 1..4
				dieType = "d4"
			when 5..7
				dieType = "d6"
			when 8..10
				dieType = "d8"
			when 11
				dieType = "d10"
			when 12
				dieType = "d12"
			end
			scores.push "#{dieQuant}#{dieType}"
		end
		return scores
	end

end