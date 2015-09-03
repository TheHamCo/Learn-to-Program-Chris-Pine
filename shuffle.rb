def shuf(array)
	shuffle2(array,[])
end

def shuffle(list,slist)
	equiv = 1
	for i in 1...list.length
		for j in 1...slist.length
			if true #list[i]==slist[j] || slist.length != list.length
				equiv += 1
			end
		end
	end
	puts equiv

	if equiv >= 1
		ind = rand(list.length)
		ind2 = rand(list.length)
		if ind==ind2
			ind = rand(list.length)
			ind2 = rand(list.length)
		end
		slist[ind2] == list[ind]
		list.delete_at(ind)
		shuffle(list,slist)
	else
		if slist.length == 0
			ind = rand(list.length)
			ind2 = rand(list.length)
			if ind==ind2
				ind = rand(list.length)
				ind2 = rand(list.length)
			end
			slist[ind2] == list[ind]
			list.delete_at(ind)
			shuffle(list,slist)
		else
			return slist
		end
	end
end

def shuffle2(list,slist)
	#Base case: if none of the elements in the shuffled list (slist) match up with any of the elements in list,
	#and the slist is not empty,

	#BETTER base case: If the list is all nil
	#then return the slist and finish recursion.
	#(The shuffle is already handled by the random number generator)
	return list if list.length <= 1
	return slist if list.uniq.length == 1

	#Generate two random indices, each according to the ORIGINAL length of list
		#Issue: how to keep track of original length using recursion?
		#SOLUTION: The original length stays constant between list and slist....
		#WAIT!  We never remove anything from list, only make it nil.  list.length is constant!
	ind1 = rand(list.length)
	ind2 = rand(list.length)
	while (list[ind1]==nil) || (slist[ind2]!=nil) #||(ind1==ind2) #enable this for a full shuffle STILL BROKEN
												  # If the last element stays in place, the code locks up!
		ind1 = rand(list.length)
		ind2 = rand(list.length)
	end
	#If the two indices are equal, then regenerate.
	#If the item indexed in list is empty (nil), then generate other random numbers
	#If the item indexed in slist is not nil, then generate other random numbers

	#Move the list item to the slist using the calculated indices
	slist[ind2] = list[ind1]
	#Replace the item in list with "nil"
	list[ind1] = nil
	#Recurse, calling shuffle2 with the new list and slist
	puts "#{slist}\n\n"
	shuffle2(list,slist)
end
list = ['zulu','kilo','mike','lima','hello', 'bravo','alpha','delta','tango']
slist = shuf(list)
#puts "\n #{slist} \n"