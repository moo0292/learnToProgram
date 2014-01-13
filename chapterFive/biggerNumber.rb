puts 'Bigger, better favorite number'
puts 'What is your favorite number'
num_string = gets.chomp
bigger_num_int = num_string.to_i + 1
bigger_num_string = bigger_num_int.to_s
puts 'Well ' + bigger_num_string + ' is a bigger number'