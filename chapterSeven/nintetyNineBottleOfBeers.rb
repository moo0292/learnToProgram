num = 99
while num != 0
	current_num = num
	num = num - 1
	if current_num == 1
		puts '1 bottle of beer on the wall, 1 bottle of beer.'
		puts 'Take one down and pass it around, no more bottles of beer on the wall.'
	else
		puts current_num.to_s + ' bottles of beer on the wall, ' +  current_num.to_s + ' bottles of beer.'
		puts 'Take one down and pass it around, ' + num.to_s + ' bottles of beer on the wall.'
	end
end

puts 'No more bottles of beer on the wall, no more bottles of beer. '
puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'