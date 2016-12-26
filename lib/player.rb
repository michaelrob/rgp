class Player
  MAX_HITPOINTS = 100

  def initialize
    @hit_points = MAX_HITPOINTS
    @attack_power = 1
    @x_pos, @y_pos = 0, 0
  end

  def name
    @name
  end

  def name=(new_name)
    @name = new_name
  end

  def hurt(amount)
    @hit_points -= amount
    kill if @hit_points <= 0
  end

  def alive?
    @hit_points > 0
  end

  def kill
    puts "Game Over"
    exit
  end
end
