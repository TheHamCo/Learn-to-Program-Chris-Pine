#Initializations
num = ''
romnum = ''

def num2rom(dig,num,ones,fives,fours,nines,romnum)
	if num/dig%10== 4
		romnum << fours
	elsif num/dig%10 == 9
		romnum << nines
	else
		romnum << fives if num/dig%10/5 != 0
		(num/dig%10%5).times {romnum<<ones}
	end
	return romnum
end

#infinitely looping number to Roman Numeral converter.
until num == 'e'
	puts 'enter number between 0 and 3000'
	num = gets.chomp.to_i

	num2rom(1000,num,'M','','','',romnum)
	num2rom(100,num,'C','D','CD','CM',romnum)
	num2rom(10,num,'X','L','XL','XC',romnum)
	num2rom(1,num,'I','V','IV','IX',romnum)
	
	puts romnum
	romnum = ''

end