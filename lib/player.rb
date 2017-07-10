class Player
  attr_accessor :hit_points, :attack_power
  attr_accessor :x_pos, :y_pos

  MAX_HITPOINTS = 100

  def initialize
    @hit_points = MAX_HITPOINTS
    @attack_power = 1
    @x_pos, @y_pos = 0, 0
  end

  def name
    @name
  end

  def title
    @title
  end

  def name=(new_name)
    @name = new_name
  end

  def title=(new_title)
    @title = new_title
  end

  def can_move(direction)
    @current_room.has_room_to_the?(direction)
  end

  def hurt(amount)
    @hit_points -= amount
    kill if @hit_points <= 0
  end

  def heal(amount)
    @hit_points += amount
    @hit_points = [@hit_points, MAX_HITPOINTS].min
  end

  def alive?
    @hit_points > 0
  end

  def kill
    puts "Game Over"
    exit
  end

  def status
    puts "Player Status"
    puts "#{@name} #{@title}"
    puts "HP: #{@hit_points}/#{MAX_HITPOINTS}"
    puts "AP: #{@attack_power}"
    puts ""
  end
end
