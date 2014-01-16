def english_number number
	if number < 0 
		return 'Please enter a number that isn\'t negative.'
	end
	if number == 0
		return 'zero'
	end

	if number >= 10000
		puts 'Please enter a number that isnt over 9999'
	end
	num_string = '' 
	ones_place = ['one', 'two', 'three',
	'four', 'five', 'six',
	'seven', 'eight', 'nine']
	tens_place = ['ten', 'twenty', 'thirty',
	'forty', 'fifty', 'sixty',
	'seventy', 'eighty', 'ninety']
	hundred_place = ['one-hundred', 'two-hundred', 'three-hundred',
	'four-hundred', 'five-hundred', 'six-hundred',
	'seven-hundred', 'eight-hundred', 'nine-hundred']
	thousand_place = ['one-thousand', 'two-thousand', 'three-thousand',
	'four-thousand', 'five-thousand', 'six-thousand',
	'seven-thousand', 'eight-thousand', 'nine-thousand']
	teenagers = ['eleven', 'twelve', 'thirteen',
	'fourteen', 'fifteen', 'sixteen',
	'seventeen', 'eighteen', 'nineteen']

	left = number

	write = left / 1000
	left = left - write* 1000

	if write > 0
		num_string = num_string + thousand_place[write-1]
		if left > 0
			num_string = num_string + '-'
		end
	end

	write = left/100
	left = left - write*100
	if write > 0
		num_string = num_string + hundred_place[write-1]
		if left > 0
			num_string = num_string + '-'
		end
	end

	write = left/10 
	left = left - write*10 
	if write > 0
		if ((write == 1) and (left > 0))
			num_string = num_string + teenagers[left-1]
			left = 0
		else
			num_string = num_string + tens_place[write-1]
		end
		if left > 0
			num_string = num_string + '-'
		end
	end
	write = left
	left = 0
	if write > 0
		num_string = num_string + ones_place[write-1]
	end
num_string
puts num_string
end

english_number 9999