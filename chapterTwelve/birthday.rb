def calculate_spank(day,month,year)
	birthday = Time.gm(year, month, day)
  current_time = Time.new
  seconds = current_time - birthday
  minute = seconds / 60
  hours = minute / 60
  days = hours / 24
  years = (days / 365).to_i
  years.times do
    puts 'SPANK!'
  end
end

puts 'what year were you born?'
year = gets.chomp
puts 'which month were you born?'
month = gets.chomp
puts 'which date were you born?'
date = gets.chomp
puts ''
calculate_spank(date.to_i,month.to_i,year.to_i)