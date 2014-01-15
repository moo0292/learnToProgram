def ask question
	puts question
	input = gets.chomp
	while true
		if input.downcase == 'yes'
			return true
		elsif input.downcase == 'no'
			return false
		else
			puts 'Please answer yes or no'
		end
		input = gets.chomp
	end

end

answer = ask 'Is 5 more than 50?'
puts answer