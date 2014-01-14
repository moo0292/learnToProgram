puts 'hi'
beginning_year = 0
ending_year = 0
while true
	puts 'what is the beginning year'
	beginning_year = gets.chomp.to_i
	puts 'what is the ending year'
	ending_year = gets.chomp.to_i
	if beginning_year < ending_year && beginning_year >= 0 && ending_year >= 0
		break
	end
	puts 'Invalid input, please retype again'
end

year_pointer = beginning_year

puts ''
puts 'The years are'
while year_pointer != ending_year
	if year_pointer % 4 == 0
		if year_pointer % 100 != 0
			puts year_pointer.to_s
		elsif year_pointer % 100 == 0
			if year_pointer % 400 == 0
				puts year_pointer.to_s
			end
		end
	end
	year_pointer = year_pointer + 1
end