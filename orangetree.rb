class OrangeTree
	def initialize
		@height = 0
		@age = 0
		@oranges = 0

		puts "A tree is planted."
=begin
		puts "It is #{@age} years old, "
		print "#{@height} feet tall, and "
		print "has #{@oranges} oranges."
=end
	end

	def height
		puts "The tree is now #{@height} feet tall."
	end

	def one_year_passes
		puts "A year passes..."
		@age += 1
		puts "The tree is now #{@age} years old."
		@height += 0.5
		puts "The tree is now #{@height} feet tall."
		if @age == 10
			puts "The tree has grown old and dies.  It has lived a long life."
			exit
		elsif @age >= 5
			@oranges += 2
		elsif @age >= 3
			@oranges += 1
		end
	end

	def count_the_oranges
		puts "The tree now has #{@oranges} oranges!"
	end

	def pick_an_orange
		if @oranges > 0
			@oranges -= 1
			puts "The orange was delicious!"
		else
			puts "No oranges to eat yet :("
		end
	end
end

tree = OrangeTree.new

cmd = ''
until cmd == 'exit'
	puts "What do you want to do with your orange tree?"
	puts "1. height"
	puts "2. one_year_passes"
	puts "3. count_the_oranges"
	puts "4. pick_an_orange"
	puts "5. exit"

	cmd = gets.chomp
	tree.public_send(cmd)
	puts "\n\n"
end
