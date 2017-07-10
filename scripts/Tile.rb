class Tile
  FLOOR('#', 'yellow')
  WALL('*', 'yellow')
  BOUNDS('x', 'black')

  def initialize(glyph, colour)
    @glyph = glyph
    @colour = colour
  end

  def isDiggable?
    # toDo
  end

  def isGround?
    # toDo
  end
end