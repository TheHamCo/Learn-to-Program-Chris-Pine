# Returns leap years for user-specified range

#Chapter 7 exercises page 58:
#
# Leap years. Write a program that asks for a starting year and an
# ending year and then puts all the leap years between them (and
# including them, if they are also leap years). Leap years are years
# divisible by 4 (like 1984 and 2004). However, years divisible by
# 100 are not leap years (such as 1800 and 1900) unless they are
# also divisible by 400 (such as 1600 and 2000, which were in fact
# leap years). What a mess!

puts "Enter starting year: "
start = gets.chomp.to_i
puts "Enter ending year: "
endd = gets.chomp.to_i

for i in start..endd
	if (i%4 == 0) && ((i%100!=0)||(i%400==0))
		puts i
	end
end

