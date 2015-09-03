list = []
word = ' '

def simpsort(list)
	slist = []

	list.length.times do
		i = list.index { |x| x == list.min }
		slist << list[i]
		list.delete_at(i)
	end
	slist
end

until word == ''
	puts "Enter some words.  Enter a blank line to exit."
	word = gets.chomp
	list.push(word)#.sort!
	list = simpsort(list)

	puts "\n #{list} \n"
end