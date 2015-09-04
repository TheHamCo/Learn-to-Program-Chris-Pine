#Old-School Roman Numerals

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
=end

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

#Infinitely looping number to Roman Numeral converter.
while true # No exit condition; add one?
	num = gets.chomp.to_i

	#This has too much repetition.  DRY!

	#1000s
	(dig(1000,num)%5).times {romnum<<'M'} # 1000s does not have a "fives" case

	#100s
	romnum << 'D' if dig(100,num)/5 != 0 # Adds the "fives" case
	(dig(100,num)%5).times {romnum<<'C'} # Adds the "ones" case

	#10s
	romnum << 'L' if dig(10,num)/5 != 0 # Ditto for everything else
	(dig(10,num)%5).times {romnum<<'X'}

	#1s
	romnum << 'V' if dig(1,num)/5 != 0 
	(dig(1,num)%5).times {romnum<<'I'} 
	
	puts romnum
	romnum = ''

end