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
	rec_sort_dict(array,[])
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

def rec_sort_dict(ua,sa)
	#modified sorting method that properly accounts for capital letters

	#Base Case
	#If unsorted array is empty, we are done recursing
	if ua.length <1
		return sa
	end

	#Remove an element from the unsorted array for comparing
	smallest = ua.pop
	#"still unsorted array" = intermediate array built up through recursion
	sua = []
	scapital = false
	icapital = false

	ua.each {|i| #find the current smallest element in the unsorted list
		puts "i0: #{i[0]}"
		puts "st: #{smallest[0]}"

		if i[0] == i[0].upcase
			i[0] = i[0].downcase
			icapital = true
		end
		if smallest[0] == smallest[0].upcase
			smallest[0] = smallest[0].downcase
			scapital = true
		end

		puts "after edits"
		puts "i0: #{i}"
		puts "st: #{smallest[0]}"

		puts "Icap: #{icapital}"
		puts "smallestcap: #{scapital}"

		if i < smallest #if the list element is smaller than our base comparison element
			if scapital==true
				smallest[0] = smallest[0].upcase
				scapital = false
			end

			puts "i is smaller"
			puts "#{smallest} added to sua"
			sua.push(smallest)

			if icapital==true
				icapital = false
				scapital = true
			end
			smallest = i #now the list element is the new base comparison element0
			puts "found a new smallest"
		else
			if icapital==true
				i[0] =  i[0].upcase
				icapital = false
			end
			sua.push(i) #if the list element is bigger, we don't want to sort it yet
			puts "i isn't smaller"
			puts "#{i} added to sua"
		end
	}
	if scapital==true
		smallest[0] = smallest[0].upcase
		scapital = false
	end
	puts "#{smallest} added to sorted"
	sa.push(smallest) #now put the true smallest member of the array into the sorted array
	rec_sort_dict(sua,sa) #recurse

end


list = ['Zulu','kilo','Mike','lima','Charlie','hotel', 'bravo','alpha','delta','Tango','uniform']
list = sort(list)

puts "\n #{list} \n"