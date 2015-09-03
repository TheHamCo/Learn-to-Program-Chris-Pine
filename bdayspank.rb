def bdayspank(year, month, day)
	bday = Time.local(year,month,day)
	((Time.now - bday)/60/60/24/365).floor.times {|i| puts "#{i+1} SPANK!"}
end

puts "What is your birthday year?"
year = gets.chomp
puts "What is your birthday month?"
month = gets.chomp
puts "What is your birthday day?"
day = gets.chomp

bdayspank(year,month,day)