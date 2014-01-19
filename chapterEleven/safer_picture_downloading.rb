Dir.chdir 'C:/Users/Kittitat/Desktop/program'

pic_names = Dir['C:/Users/Kittitat/Desktop/all_shortcut/unnecessary/**/*.{PNG, png}']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files"

pic_number = 1

pic_names.each do |name|
  print'.'
  new_name = ''
  if pic_number < 10
    new_name = "#{batch_name}0#{pic_number}.png"
  else
    new_name = "#{batch_name}#{pic_number}.png"
  end

  if File.exists?(new_name)
    puts 'The file already exist, terminate program'
    exit
  end
  File.rename name, new_name
  pic_number = pic_number + 1
end

puts
puts 'Done!'