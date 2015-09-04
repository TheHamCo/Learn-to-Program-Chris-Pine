#Chapter 7 exercises page 58:
#
# “99 Bottles of Beer on the Wall.” Write a program that prints out
# the lyrics to that beloved classic, “99 Bottles of Beer on the Wall.”
# 
# Original text:
# 
# 99 bottles of beer on the wall, 99 bottles of beer.
# Take one down and pass it around, 98 bottles of beer on the wall.
#
# solution on page 156

start = 99 # So we don't have to change it multiple times in the program
start.downto(2).each {|i| puts "\n#{i} bottles of beer on the wall, #{i} bottles of beer.
Take one down and pass it around, #{i-1} bottles of beer on the wall."}

#I could write a conditional for the case where "bottle" is singular, but
#it's not worth the effort because the condition only triggers this one case.
puts "\n1 bottle of beer on the wall, 1 bottle of beer.
Take one down and pass it around, 1 bottle of beer on the wall."

#The final case is unique
puts "\nNo more bottles of beer on the wall, no more bottles of beer. 
Go to the store and buy some more, #{start} bottles of beer on the wall."