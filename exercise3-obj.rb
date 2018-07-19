class Player
  def initialize
    @lives = 5
    @gold_coins = 0
    @health_points = 10
  end

  def gold_coins
    @gold_coins
  end

  def gold_coins=(int)
    @gold_coins = int
  end

  def health_points
    @health_points
  end

  def health_points=(int)
    @health_points = int
  end

  def lives
    @lives
  end

  def lives=(int)
    @lives = int
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold_coins += 1
    if (@gold_coins % 10) == 0
      level_up
    end
  end

  def do_battle(damage)
    @health_points -= damage
    if @health_points < 1
      @lives -= 1
      if @lives <= 0
        restart
      end
      @health_points = 10
    end
  end

  def restart
    @lives = 5
    @gold_coins = 0
    @health_points = 0
  end

end

player1 = Player.new
puts "Player 1 has #{player1.lives} lives before leveling up"
player1.level_up
puts "Player 1 has #{player1.lives} lives after leveling up"
30.times do
  player1.collect_treasure
end
puts "Player 1 has #{player1.lives} after collecting treasure with #{player1.gold_coins} gold coins"

player1.do_battle(25)
puts "Player 1 has #{player1.lives} lives after taking 25 damage. Health has been reset to #{player1.health_points}"

4.times do
  player1.do_battle(10)
end

puts "Player now has #{player1.lives} lives, #{player1.gold_coins} coins, and #{player1.health_points} health points."
