def gclock param
	hrs = Time.new.hour
	if hrs > 12
		hrs -= 12
	end
	hrs.times {yield(param)}
end

gclock(8){|x| puts x}