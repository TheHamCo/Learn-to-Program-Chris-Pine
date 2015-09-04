#Chapter 2 exercises page 13:
#
#2.5 A Few Things to Try
#Write a program that tells you the following:
#• Hours in a year. How many hours are in a year?
#• Minutes in a decade. How many minutes are in a decade?
#• Your age in seconds. How many seconds old are you? (I’m not
#going to check your answer, so be as accurate—or not—as you
#want.)

hours_per_year = 365*24
puts "Hours in a year: #{hours_per_year}"

puts "Minutes in decade: #{hours_per_year * 10 * 60}"

puts "My age (21 years) in seconds: #{hours_per_year*21*60*60}"
