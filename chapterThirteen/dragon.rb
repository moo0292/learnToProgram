class Dragon
  def initialize name
    @name = name
    @sleep = false
    @stuff_in_belly = 10
    @stuff_in_intestine = 0
    puts "#{@name} just hatched"
  end

  def feed
    puts "You feed #{@name}"
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}"
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to sleep"
    @sleep = true
    3.times do
      if @sleep
        passage_of_time
      end
      if @sleep
        puts "#{@name} snores, filling the room with smoke"
      end
      if  @sleep
        @sleep = false
        puts "#{@name} wakes up slowly"
      end
    end
  end

  def toss
    puts "You toss #{@name} up into the air"
    puts "He giggles, which singes your eyebrows"
    passage_of_time
  end

  def rock
    puts "You rock #{@name} gently"
    @sleep = true
    puts 'He briefly dozes off'
    passage_of_time
    if @sleep
      @sleep = false
      puts '...but wakes when you stop'
    end
  end

  private
  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end
  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly = @stuff_in_belly -1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else
      if @sleep
        @sleep = false
        puts 'He wakes up suddenly'
      end
      puts "#{@name} is starving! In desperation he ate you"
      exit
    end

    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end

    if hungry?
      if @sleep
        @sleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name}'s stomach grumbles"
    end

    if poopy?
      if @sleep
        @sleep = false
        puts 'He wakes up suddenly'
      end
      puts "#{@name} does the potty dance..."
    end 
  end
end

puts 'What do you like to call your dragon?'
name = gets.chomp
drag = Dragon.new name
while true
  puts 'What would you like to do with your dragon?feed, toss, walk, put_to_bed, or rock?'
  command = gets.chomp
  if command.downcase == "feed"
    drag.feed
  elsif command.downcase == "toss"
    drag.toss
  elsif command.downcase == "walk"
    drag.walk
  elsif command.downcase == "put_to_bed"
    drag.put_to_bed
  elsif command.downcase == "rock"
    drag.rock

  else
    puts "invalid input"
    next
  end

end