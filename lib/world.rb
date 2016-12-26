class World
  HEIGHT = 10
  WIDTH = 10

  def initialize
    @rooms = Array.new(HEIGHT, Array.new(WIDTH))
  end

  def move_north(entity)
    entity.y_pos -= 1 if entity.y_pos > 0
  end

  def move_south(entity)
    entity.y_pos += 1 if entity.y_pos < WORLD_HEIGHT - 1
  end

  def move_east(entity)
    entity.x_pos += 1 if entity.x_pos < WORLD_HEIGHT - 1
  end

  def move_west(entity)
    entity.x_pos -= 1 if entity.x_pos > 0
  end

  def get_room(entity)
    @rooms[entity.x_pos][entity.y_pos] ||= Room.new
  end
end
