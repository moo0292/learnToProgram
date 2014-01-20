class Orange_tree
  def initialize
    puts 'An orange tree has been created'
    @height = 0
    @fruits = 0
    @year = 0
    @rand_per_year = rand(10) + 1
  end

  def one_year_passes
    puts 'One year has gone by like a wind'
    time_pass
    puts "current height : #{@height}"
    puts "current fruits : #{@fruits}"
    puts "current year : #{@year}"
  end

  def count_the_orange
    return @fruits
  end
  def pick_an_orange
    @fruits -= 1
    puts 'You picked up an orange yummy!'
  end
  private
  def old_enough?
    @year > 1
  end
  def dead?
    @year == 6
  end
  def time_pass
    @rand_height = rand(20) + 1
    @height += @rand_height
    @year += 1
    @rand_per_year = rand(10) + 1
    if old_enough?
      @fruits += @year * @rand_per_year
    else
      puts 'Your tree is still too young to produce any fruits'
    end

    if dead?
      puts 'Your tree is dead'
      exit
    end
  end
end

test_orange = Orange_tree.new
test_orange.one_year_passes
test_orange.one_year_passes
test_orange.pick_an_orange
test_orange.one_year_passes
test_orange.one_year_passes
test_orange.one_year_passes
test_orange.one_year_passes