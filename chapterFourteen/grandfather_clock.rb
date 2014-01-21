def grandfather_clock &block
  bing = Time.new.hour
  bing.times do
    block.call
  end
end

grandfather_clock do
  puts 'DONG!'
end
