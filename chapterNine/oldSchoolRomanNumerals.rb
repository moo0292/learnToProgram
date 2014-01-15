puts 'Type in a number betwen 1 and 3000'
input = gets.chomp.to_i
number = 0

while true
	if input > 0 && input <= 3000
		number = input
		break
	else
		puts 'invalid input, please re-enter'
	end
	input = gets.chomp.to_i
end

def roman num_inp
	number = num_inp
	answer = ''
	if number / 1000 > 0
		determine_number = number / 1000
		subtract_number = determine_number * 1000
		determine_number.times do
			answer = answer + 'M'
		end
		number = number - subtract_number
	end

	if number / 500 > 0
		determine_number = number / 500
		subtract_number = determine_number * 500
		determine_number.times do
			answer = answer + 'D'
		end
		number = number - subtract_number
	end

	if number / 100 > 0
		determine_number = number / 100
		subtract_number = determine_number * 100
		determine_number.times do
			answer = answer + 'C'
		end
		number = number - subtract_number
	end

	if number / 50 > 0
		determine_number = number / 50
		subtract_number = determine_number * 50
		determine_number.times do
			answer = answer + 'L'
		end
		number = number - subtract_number
	end

	if number / 10 > 0
		determine_number = number / 10
		subtract_number = determine_number * 10
		determine_number.times do
			answer = answer + 'X'
		end
		number = number - subtract_number
	end

	if number / 5 > 0
		determine_number = number / 5
		subtract_number = determine_number * 5
		determine_number.times do
			answer = answer + 'V'
		end
		number = number - subtract_number
	end

	if number / 1 > 0
		determine_number = number / 1
		subtract_number = determine_number * 1
		determine_number.times do
			answer = answer + 'I'
		end
		number = number - subtract_number
	end
	return answer
end

variable = roman input
puts variable.to_s