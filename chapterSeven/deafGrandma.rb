#Deafgrandma
counter = 0
previous_input = ''
previous_previous_input = ''
while true
	puts 'What do you want to talk to granma?'
	input = gets.chomp
	ran_num = rand(21)
	year = ran_num + 1930
	if input == input.upcase && input.upcase != 'BYE'
		puts 'NO, NOT SINCE ' + year.to_s
	elsif input.upcase == 'BYE'
		puts 'HUH?! SPEAK UP, SONNY'
		if previous_input.upcase == 'BYE' && previous_previous_input.upcase == 'BYE'
			break
		end
	else
		puts 'HUH?! SPEAK UP, SONNY!'
	end
	previous_previous_input = previous_input
	previous_input = input

end

puts 'You gave your grandma a heart attack GG'