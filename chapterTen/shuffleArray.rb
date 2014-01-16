def shuffle array
	test_array = array
	empty_array = []
	counter = 0
	while counter < test_array.length 
		random_number = rand(test_array.length)
		if empty_array.include?(test_array[random_number])
		else
			empty_array[counter] = test_array[random_number]
			counter = counter + 1
		end
	end
	return empty_array
end

test_array_answer = ['one', 'two', 'three', 'four']
array_shuffle = shuffle test_array_answer
puts array_shuffle
