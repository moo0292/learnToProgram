hash_map = {"i" => 1,"v" => 5,"x" => 10,"l" => 50,"c" => 100,"d" => 500,"m" => 1000}

incrementation = 0
puts 'type in roman letters'
roman = gets.chomp.downcase
roman.each_char do |value|
  if value == 'i' or value == 'v' or value == 'x' or value == 'l' or value == 'c' or value == 'd' or value == 'm'
  else
    puts 'Invalid input'
    exit
  end
end
length = roman.length
sum = 0
while incrementation < length
  if incrementation + 1 == length
    sum += hash_map[roman[incrementation]]
    break
  end
  if hash_map[roman[incrementation]] < hash_map[roman[incrementation + 1]]
    sum -= hash_map[roman[incrementation]]
  else
    sum += hash_map[roman[incrementation]]
  end
  incrementation += 1
end

puts sum.to_s