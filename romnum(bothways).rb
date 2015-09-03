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

def num2romrun
	#infinitely looping number to Roman Numeral converter.
	while true
		puts 'enter number between 0 and 3000'
		num = gets.chomp.to_i
		romnum = ''

		num2rom(1000,num,'M','','','',romnum)
		num2rom(100,num,'C','D','CD','CM',romnum)
		num2rom(10,num,'X','L','XL','XC',romnum)
		num2rom(1,num,'I','V','IV','IX',romnum)
		
		puts romnum
		romnum = ''

	end
end

def rom2num(num, ones,fives,fours,nines)
	case num[-2..-1]
	when nines
		num[-2..-1] = '' 
		return 9.to_s, num
	when fours
		num[-2..-1] = '' 
		return 4.to_s, num
	end

	counter = 0
	i = -1
	until num[i]!=ones
		counter += 1
		i -= 1
	end

	num = num.gsub(ones,'')

	if num[-1]==fives
		counter += 5
		num = num.gsub(fives,'')
	end

	return counter.to_s, num
end

def rom2numrun
	puts 'enter roman number number between 0 and 3000'
	num = gets.chomp.upcase
	numrom = ''

	addition, num = rom2num(num,'I','V','IV','IX')
	numrom << addition
	addition, num = rom2num(num,'X','L','XL','XC')
	numrom << addition
	addition, num = rom2num(num,'C','D','CD','CM')
	numrom << addition
	addition, num = rom2num(num,'M','','','')
	numrom << addition
	
	return numrom.reverse.to_i
end

puts rom2numrun