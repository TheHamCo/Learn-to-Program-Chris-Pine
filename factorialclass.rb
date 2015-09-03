class Integer
	def fact
		self == 1? 1 : self*(self-1).fact
	end
end

puts "#{8.fact}"