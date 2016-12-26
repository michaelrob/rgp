class World
  HEIGHT = 10
  WIDTH = 10

  def initialize
    @rooms = Array.new(HEIGHT, Array.new(WIDTH))
  end

  def move_north()
  end

  def move_south()
  end

  def move_east()
  end

  def move_west()
  end

  def get_room()
    @rooms[entity.x_pos][entity.y_pos] ||= Room.new
  end
end
