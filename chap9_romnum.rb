num = ''
until num == 'exit'
	num = gets.chomp.to_i
	romnum = ''
	
=begin
	num/1000%10 Gets the thousandths digit
	num/100%10 Gets the hundredths digit
	num/10%10 Gets the tenths digit
	num/1%10 Gets the ones digit
=end

	dig(1,num)%5.times {romnum<<'I'}
	romnum << 'V' if dig(1,num)/5 != 0
end

def dig(dig,num)
	num/dig%10
end