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

	ua.each {|i| #find the current smallest element in the unsorted list
		if i[0] == i[0].upcase
			i[0] = i[0].downcase
			capital = true
		end

		puts "#{i}"

		if i < smallest #if the list element is smaller than our base comparison element
			sua.push(smallest) #then put the comparison in the sua
								#order doesn't matter because this will be reiterated anyway
			smallest = i #now the list element is the new base comparison element
		else
			sua.push(i) #if the list element is bigger, we don't want to sort it yet
		end

		if capital==true
			i[0] = i[0].upcase
		end
	}
	sa.push(smallest) #now put the true smallest member of the array into the sorted array
	rec_sort_exp(sua,sa) #recurse

end


list = ['Zulu','kilo','mike','lima','hello', 'bravo','alpha','delta','tango']
list = sort(list)

puts "\n #{list} \n"