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

	if number / 100 > 0
		determine_number = number / 100
		subtract_number = determine_number * 100
		if determine_number == 9
			answer = answer + 'CM'
		elsif determine_number == 4
			answer = answer + 'CD'
		else
			if determine_number / 5 > 0
				answer = answer + 'D'
				determine_number = determine_number - 5
			end
			determine_number.times do
				answer = answer + 'C'
			end
		end
		number = number - subtract_number
	end

	if number / 10 > 0
		determine_number = number / 10
		subtract_number = determine_number * 10
		if determine_number == 9
			answer = answer + 'XC'
		elsif determine_number == 4
			answer = answer + 'XL'
		else
			if determine_number / 5 > 0
				answer = answer + 'L'
				determine_number = determine_number - 5
			end
			determine_number.times do
				answer = answer + 'X'
			end
		end
		number = number - subtract_number
	end

	if number / 1 > 0
		determine_number = number / 1
		subtract_number = determine_number * 1
		if determine_number == 9
			answer = answer + 'IX'
		elsif determine_number == 4
			answer = answer + 'IV'
		else
			if determine_number / 5 > 0
				answer = answer + 'V'
				determine_number = determine_number - 5
			end
			determine_number.times do
				answer = answer + 'I'
			end
		end
		number = number - subtract_number
	end
	return answer
end

variable = roman input
puts variable.to_s