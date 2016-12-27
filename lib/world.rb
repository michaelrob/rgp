class World
  HEIGHT = 10
  WIDTH = 10

  def initialize
    @rooms = Array.new(HEIGHT, Array.new(WIDTH))
  end

  def move_north(player)
    entity.y_pos -= 1 if entity.y_pos > 0
  end

  def move_south(player)
    entity.y_pos += 1 if entity.y_pos < WORLD_HEIGHT - 1
  end

  def move_east(player)
    entity.x_pos += 1 if entity.x_pos < WORLD_HEIGHT - 1
  end

  def move_west(player)
    entity.x_pos -= 1 if entity.x_pos > 0
  end

  def get_room(player)
    @rooms[player.x_pos][player.y_pos] ||= Room.new
  end
end
