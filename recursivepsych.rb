def ask_rec(q)
	puts q
	reply = gets.chomp

	if reply == 'yes'
		ans = true
	elsif reply == 'no'
		ans = false
	else
		puts "Please answer yes or no."
		ask_rec(q)
	end
end

puts ask_rec("Do you have what it takes?")
