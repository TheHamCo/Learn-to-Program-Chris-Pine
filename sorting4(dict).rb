=begin
list = []
word = ' '
=end

def simpsort(list)
	#This sort "cheats" and uses the min function
	#(no recursion)
	slist = []

	list.length.times do
		i = list.index { |x| x == list.min }
		slist << list[i]
		list.delete_at(i)
	end
	slist
end


def sort(array)
	#wrapper function
	rec_sort_dict_simp(array,[])
end

def rec_sort(uarray, sarray)
	#This sort "cheats" and uses the min function
	#(recursive)
	if uarray.length < 1
		return sarray
	end
	sarray << uarray.min
	uarray.delete(uarray.min)
	rec_sort(uarray, sarray)
end

def rec_sort_exp(ua,sa)
	#This sort is the solution from the book and implements its own min
	#(recursive)
	#Base Case
	#If unsorted array is empty, we are done recursing
	if ua.length <1
		return sa
	end

	#Remove an element from the unsorted array for comparing
	smallest = ua.pop
	#"still unsorted array" = intermediate array built up through recursion
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
	#modified recursive sorting method that properly accounts for capital letters
	#Base Case
	#If unsorted array is empty, we are done recursing
	if ua.length <1
		return sa
	end

	#Remove an element from the unsorted array for comparing
	smallest = ua.pop
	#"still unsorted array" = intermediate array built up through recursion
	sua = []
	#initialize flags to keep track of capitals
	scapital = false
	icapital = false

	ua.each {|i| #find the current smallest element in the unsorted list
		# if the list element is an uppercase word, then convert it to lower for comparison
		#set the "i is a capital word" flag to true so we know
		if i[0] == i[0].upcase
			i[0] = i[0].downcase
			icapital = true
		end
		#ditto for the current comparison element
		if smallest[0] == smallest[0].upcase
			smallest[0] = smallest[0].downcase
			scapital = true
		end

		if i < smallest #if the list element is smaller than our base comparison element
			#if the comparison element was originally a capital word, change it back before
			#putting it back into the unsorted pile
			#and also reset the "s is a capital" flag
			if scapital==true
				smallest[0] = smallest[0].upcase
				scapital = false
			end
			sua.push(smallest)

			#similar for i, but this time it's just a transferrance of variables,
			#hence only flags need to be swapped
			if icapital==true
				icapital = false
				scapital = true
			end
			smallest = i #now the list element is the new base comparison element
		else
			#if the list element was originally a capital word, change it back before
			#putting it back into the unsorted pile
			#and also reset the "i is a capital" flag
			if icapital==true
				i[0] =  i[0].upcase
				icapital = false
			end
			sua.push(i) #if the list element is bigger, we don't want to sort it yet
		end
	}
	#if the final, selected comparison element was originally a capital word, 
	#change it back before putting it back into the sorted array
	#and also reset the "s is a capital" flag
	if scapital==true
		smallest[0] = smallest[0].upcase
		scapital = false
	end
	sa.push(smallest) #now put the true smallest member of the array into the sorted array
	rec_sort_dict(sua,sa) #recurse

end

def rec_sort_dict_simp(ua,sa)
	#modified recursive sorting method that properly accounts for capital letters
	#even simpler than above
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
		#if the list element is smaller than our base comparison element
		if i.downcase < smallest.downcase #THE KEY LINE!!! We need to compare the lowercase versions
			#That's it.  Everything else takes care of itself.
			sua.push(smallest)

			smallest = i #now the list element is the new base comparison element
		else
			sua.push(i) #if the list element is bigger, we don't want to sort it yet
		end
	}
	sa.push(smallest) #now put the true smallest member of the array into the sorted array
	rec_sort_dict_simp(sua,sa) #recurse

end

#------------"MAIN"----------------------

list = ['Zulu','kilo','Mike','lIma','Charlie','hotel', 'BraVo','alpha','delta','Tango','uniform']
list = sort(list)
puts "\n #{list} \n"