#Official page 161 solution for leap_year.rb

puts "Enter starting year: "
start = gets.chomp.to_i
puts "Enter ending year: "
endd = gets.chomp.to_i

(start..endd).each do |year|
	next if year%4 != 0
	next if year%100 == 0 && year%400 != 0
	puts year
end

# This is syntax that uses blocks and "next"
# Conditions are the same as in my program
# A little easier to read because it's split into lines