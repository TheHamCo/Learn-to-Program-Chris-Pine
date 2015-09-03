=begin
list = []
word = ' '

def simpsort(list)
	slist = []

	list.length.times do
		i = list.index { |x| x == list.min }
		slist << list[i]
		list.delete_at(i)
	end
	slist
end
=end

def sort(array)
	rec_sort_exp(array,[])
end

def rec_sort(uarray, sarray)
	if uarray.length < 1
		return sarray
	end
	sarray << uarray.min
	uarray.delete(uarray.min)
	rec_sort(uarray, sarray)
end

def rec_sort_exp(ua,sa)
	if ua.length <1
		return sa
	end

	smallest = ua.pop
	sua = []

	ua.each {|i|
		if i < smallest
			sua.push(smallest)
			smallest = i
		else
			sua.push(i)
		end
	}
	sa.push(smallest)
	rec_sort_exp(sua,sa)
end


list = ['zulu','kilo','mike','lima','hello', 'bravo','alpha','delta','tango']
list = sort(list)

puts "\n #{list} \n"