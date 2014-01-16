def sort some_array

test_array = some_array
test_array_length = test_array.length
empty_array = []
pointer = 0
position = 0
min_position = 0

while pointer < test_array_length
	while position < test_array.length
		if test_array[min_position] > test_array[position]
			min_position = position
		end
		position = position + 1
	end
	empty_array[pointer] = test_array[min_position]
	test_array.delete_at(min_position)
	pointer = pointer + 1
	position = 0
	min_position = 0
end
puts empty_array

end
array_test = ['c', 'b', 'a', 'a', 's']
sort array_test