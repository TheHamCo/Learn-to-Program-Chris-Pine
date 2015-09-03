class Dragon
	def initialize(name)
		@name = name
		@asleep = false
		@stomach = 10
		@intestine = 0

		puts "#{name} is born."
	end

	def feed
		puts "You feed #{@name}"
		@stomach = 10
		passage_of_time
	end

	def walk
		puts "You walk #{@name}"
		@intestine = 0
		passage_of_time
	end

	def put_to_bed
		@asleep = true
		3.times {
			if @asleep
				puts "#{@name} snores, filling the room with smoke."
				passage_of_time
			end
		}
		if @asleep
			@asleep = false
			puts "#{@name} wakes up slowly."
		end
	end

	def toss
		puts "You toss #{@name} up in the air."
		puts "S/he giggles, which singes your eyebrows."
		passage_of_time
	end

	def rock
		puts "You rock #{@name} gently."
		@asleep = true
		puts "He briefly dozes off..."
		passage_of_time
		if @asleep
			@asleep = false
			puts "...but wakes up when you stop."
		end
	end

	private
	def hungry?
		@stomach <= 2
	end

	def poopy?
		@intestine >= 8
	end

	def passage_of_time
		if @stomach > 0
			@stomach -= 1
			@intestine += 1
		else
			if @asleep
				@asleep = false
				puts "#{@name} wakes up suddenly."
			end
		puts "#{@name} is starving!  #{@name} suddenly EATS YOU!"
		exit
		end

		if hungry?
			if @asleep
				@asleep = false
				puts "#{@name} wakes up suddenly."
			end
			puts "#{@name}'s stomach grumbles..."
		end

		if @intestine >= 10
			@intestine = 0
			puts "Oops! #{@name} had an accident"
		end

		if poopy?
			if @asleep
				@asleep = false
				puts "#{@name} wakes up suddenly."
			end
			puts "#{@name} needs to go..."
		end

	end
end

puts "Name your pet dragon!"
name = gets.chomp
dragon = Dragon.new(name)

cmd = ''
until cmd == 'exit'
	puts "What do you want to do with your dragon?"
	puts "1. feed"
	puts "2. walk"
	puts "3. put_to_bed"
	puts "4. toss"
	puts "5. rock"
	puts "6. exit"

	cmd = gets.chomp
	dragon.public_send(cmd)
	puts "\n\n"
end
