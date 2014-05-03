class Roller

	def self.averageRoll(number_of_dice, die_type, iterations = 100)

		arr = []
		iterations.times do
			roll = []
			number_of_dice.times do
				this_roll = rand(1..die_type)
				if this_roll == die_type
					this_roll += rand(1..die_type) - 1
				end
				roll.push this_roll
			end
			arr.push(roll.max)
		end

		b = Hash.new(0)

		arr.sort!
		arr.each do |v|
			b[v] += 1
		end

		b.each do |k , v|
			puts "#{k} appears: #{v} times"
		end

		return nil

	end

end