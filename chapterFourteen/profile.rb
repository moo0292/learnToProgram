def profile block_description, &block
  start_time = Time.new
  block.call
  duration = Time.new - start_time
  puts "#{block_description}: #{duration}"
end

profile '2500 doublings' do
  number = 1
  2500.times do
    number = number + number
  end
  puts "#{number} digits"
end

profile 'count_to_a_million' do
  number_two = 0
  while number_two < 1000000
    number_two += 1
  end
  puts "#{number_two}"
end