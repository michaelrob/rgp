class Player
  MAX_HITPOINTS = 100

  def initialize
    @hit_points = MAX_HITPOINTS
  end

  def name
    @name
  end

  def name=(new_name)
    @name = new_name
  end

  def hurt_player(amount)
    @hit_points -= amount
    kill_player if @hit_points <= 0
  end

  def kill_player
    puts "Game Over"
    exit
  end
end
