#Chapter 8 exercises page 65:
#
# Building and sorting an array. Write the program we talked about
# at the beginning of this chapter, one that asks us to type as many
# words as we want (one word per line, continuing until we just
# press Enter on an empty line) and then repeats the words back
# to us in alphabetical order. Make sure to test your program thor-
# oughly; for example, does hitting Enter on an empty line always
# exit your program? Even on the ﬁrst line? And the second? Hint:
# There’s a lovely array method that will give you a sorted version of
# an array: sort. Use it!

def simpsort(list)
	slist = []
	list.length.times do # This could be improved by using a different iterator ...
		slist << list.min
		list.delete(list.min)
	end
	slist
end

#Main function just runs simpsort on entered list of words
list = []
until list.include?('') # Exit behavior can be improved; currently returns empty string upon exit
	puts "Enter some words.  Enter a blank line to exit."
	list.push(gets.chomp)#.sort!
	list = simpsort(list)

	puts "\n #{list} \n"
end