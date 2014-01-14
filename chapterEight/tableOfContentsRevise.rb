table_of_content = ['Table of Contets', 'Chapter 1: Getting Started', 'page 1', 'Chapter 2: Numbers', 'page 9',  'Chapter 3: Letters', 'page 13',]
line_width = 40
incrementation = 1
incrementation_two = 2

puts ''
puts table_of_content[0].center(line_width)
puts ''
while incrementation+1 < table_of_content.length
	puts ((table_of_content[incrementation].ljust(line_width)) + (table_of_content[incrementation_two]).rjust(line_width/2))
	incrementation = incrementation + 2
	incrementation_two = incrementation_two + 2
end