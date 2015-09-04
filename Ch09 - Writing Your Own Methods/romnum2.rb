# Modern Roman Numerals

#Chapter 9 exercises page 81:
#
=begin
• Old-school Roman numerals. In the early days of Roman numer-
als, the Romans didn’t bother with any of this new-fangled sub-
traction “IX” nonsense. No sir, it was straight addition, biggest
to littlest—so 9 was written “VIIII,” and so on. Write a method
that when passed an integer between 1 and 3000 (or so) returns a
string containing the proper old-school Roman numeral. In other
words, old_roman_numeral 4 should return 'IIII'. Make sure to test
your method on a bunch of different numbers. Hint: Use the inte-
ger division and modulus methods on page 37.
For reference, these are the values of the letters used:
I = 1 V = 5 X = 10 L = 50
C = 100 D = 500 M = 1000

• “Modern” Roman numerals. Eventually, someone thought it would
be terribly clever if putting a smaller number before a larger one
meant you had to subtract the smaller one. As a result of this
development, you must now suffer. Rewrite your previous method
to return the new-style Roman numerals so when someone calls
roman_numeral 4, it should return 'IV'.
=end

#Reference for finding digits
=begin
	num/1000%10 Gets the thousandths digit
	num/100%10 Gets the hundredths digit
	num/10%10 Gets the tenths digit
	num/1%10 Gets the ones digit
=end

def num2rom(dig,num,ones,fives,fours,nines,romnum)
	if num/dig%10== 4 # Check weird cases first (fours IV and nines IX)
		romnum << fours
	elsif num/dig%10 == 9
		romnum << nines
	else
		romnum << fives if num/dig%10/5 != 0 # Then add fives if they are detected
		(num/dig%10%5).times {romnum<<ones} # Add the remaining ones
	end
	return romnum
end

#Initializations
num = ''
romnum = ''

#infinitely looping number to Roman Numeral converter.
while true # No exit case; only ctrl-c
	puts 'enter number between 0 and 3000'
	num = gets.chomp.to_i

	# 1000s goes first because the function pushes new numbers from left to right
	num2rom(1000,num,'M','','','',romnum) 
	num2rom(100,num,'C','D','CD','CM',romnum)
	num2rom(10,num,'X','L','XL','XC',romnum)
	num2rom(1,num,'I','V','IV','IX',romnum)
	# Less repetition than romnum.rb

	puts romnum
	romnum = ''

end