class Cat
  def initialize(name, food, time)
    @name = name
    @preferred_food = food
    @meal_time = time
  end

  def name
    @name
  end

  def name=(str)
    @name = str
  end

  def preferred_food
    @preferred_food
  end

  def preferred_food=(str)
    @preferred_food = str
  end

  def meal_time
    @meal_time
  end

  def meal_time=(int)
    @meal_time = int
  end

  def eats_at
    if @meal_time < 12
      puts "#{@name.capitalize} eats at #{@meal_time}"
    else
      puts "#{@name.capitalize} eats at #{@meal_time-12}"
    end
  end

  def meow
    if @meal_time < 12
      puts "Hi, my name is #{@name.capitalize}. I like to eat #{@preferred_food.downcase} at #{@meal_time} AM"
    else
      puts "Hi, my name is #{@name.capitalize}. I like to eat #{@preferred_food.downcase} at #{@meal_time-12} PM"
    end
  end
end

cat1 = Cat.new("peter", "tuna", 3)
cat2 = Cat.new("homie", "sushi", 14)

cat1.meow
