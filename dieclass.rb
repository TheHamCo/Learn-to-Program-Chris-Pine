class Die
	def initialize
		roll
	end

	def roll
		@numbershowing = rand(6)
	end

	def showing
		@numbershowing
	end

	def cheat(num)
		if (num<1)||(num>6) 
			puts "Enter a valid number!"
			return
		end
		@numbershowing = num
	end
end

die = Die.new
die.cheat(3)
puts die.showing