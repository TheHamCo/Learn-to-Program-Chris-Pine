#Initializations
num = ''
romnum = ''

#Function for finding digits

=begin
	num/1000%10 Gets the thousandths digit
	num/100%10 Gets the hundredths digit
	num/10%10 Gets the tenths digit
	num/1%10 Gets the ones digit
=end
def dig(dig,num)
	num/dig%10
end

#infinitely looping number to Roman Numeral converter.
until num == 'e'
	num = gets.chomp.to_i

	#1000s
	(dig(1000,num)%5).times {romnum<<'M'}

	#100s
	romnum << 'D' if dig(100,num)/5 != 0
	(dig(100,num)%5).times {romnum<<'C'}

	#10s
	romnum << 'L' if dig(10,num)/5 != 0
	(dig(10,num)%5).times {romnum<<'X'}

	#1s

	romnum << 'V' if dig(1,num)/5 != 0
	(dig(1,num)%5).times {romnum<<'I'}
	
	puts romnum
	romnum = ''

end