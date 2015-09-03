
=begin

puts "Enter starting year: "
start = gets.chomp.to_i
puts "Enter ending year: "
endd = gets.chomp.to_i

for i in start..endd
	if (i%4 == 0) && ((i%100!=0)||(i%400==0))
		puts i
	end
end

=end

bc = 0
puts "Say something to grandma."
until bc ==3
	m1 = gets.chomp

	if m1 == m1.upcase
		year = rand(21)+1930
		puts "NO, NOT SINCE #{year}!"
		if m1 == "BYE"
			bc += 1
		end
	else
		puts "HUH?! SPEAK UP SONNY!"
	end
end
puts "SEE YOU LATER!"