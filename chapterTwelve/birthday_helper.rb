file_location = Dir['C:/Users/Kittitat/Desktop/program/name.txt']
test = File.read('C:/Users/Kittitat/Desktop/program/name.txt')
name_list = {}
new_line = 0
start_name = 0
end_name = 0
start_date = 0
end_date = 0
comma = 0
range = 'a'..'z'
should_break = ""
while true
  while true
    if test[comma] == ","
      break
    end
    comma += 1
  end
  end_name = comma - 1
  start_date = comma + 2
  while true
    if test[new_line] == "\n"
      break
    end
    new_line += 1
    if new_line > test.length
      should_break = "true"
      break
    end
  end
  end_date = new_line-1
  name_list["#{test[start_name..end_name]}"] = "#{test[start_date..end_date]}" 
  new_line += 1
  start_name = new_line
  comma = new_line
  if should_break == "true"
    break
  end
end

puts "Who\'s birthday do you want to know?"
input = gets.chomp
input_birthday = name_list["#{input}"]
if input_birthday != nil
 puts input_birthday
else
  puts 'There is no such name in the directory'
end