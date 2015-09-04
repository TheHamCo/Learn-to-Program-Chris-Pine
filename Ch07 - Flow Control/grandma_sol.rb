# page 160 solution for grandma.rb

puts "say something to grandma."
bye_count = 0 # It is better to name variables something meaningful vs. ambiguous ("bc" in my solution)

while true
	said = gets.chomp # ditto (said vs m1)

	# This is the original book solution:

	# if said == 'BYE' # "Base case" comes first instead of buried in the code so we know when to stop running
	# 	bye_count += 1
	# else
	# 	bye_count = 0 # Failed to do this in my first solution
	# end

	# I've made it more compact using ternary operator:
	bye_count = (said == "BYE" ? bye_count+1 : 0)
	break if bye_count >= 3

	#I also changed the original solutions to a ternary here:
	puts (said == said.upcase ? "NO, NOT SINCE #{1930 + rand(21)}" : "HUH?! SPEAK UP, SONNY!")
	#Also, there was no need to assign the random year to a variable in my original solution (beginner mistake)
end
