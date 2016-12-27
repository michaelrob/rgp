class World
  HEIGHT = 10
  WIDTH = 10

  def initialize
    @rooms = Array.new(HEIGHT, Array.new(WIDTH))
  end

  def move_north(player)
    player.y_pos -= 1 if player.y_pos > 0
  end

  def move_south(player)
    player.y_pos += 1 if player.y_pos < HEIGHT - 1
  end

  def move_east(player)
    player.x_pos += 1 if player.x_pos < HEIGHT - 1
  end

  def move_west(player)
    player.x_pos -= 1 if player.x_pos > 0
  end

  def get_room(player)
    @rooms[player.x_pos][player.y_pos] ||= Room.new
  end
end
