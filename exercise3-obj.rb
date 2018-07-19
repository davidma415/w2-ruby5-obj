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
end

player1 = Player.new
puts "Player 1 has #{player1.lives} lives before leveling up"
player1.level_up
puts "Player 1 has #{player1.lives} lives after leveling up"
