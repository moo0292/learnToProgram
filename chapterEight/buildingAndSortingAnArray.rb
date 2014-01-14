input_array = []
increment = 0
puts 'Type in one word per line and end with enter on an empty line'
input = gets.chomp

while input != ''
	input_array[increment] = input
	increment = increment + 1
	input = gets.chomp
end

puts 'Here is the array in alphabetical oorder'
puts input_array.sort.join(', ')