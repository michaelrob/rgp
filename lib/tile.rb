class Tile
  STATE = [
    :floor, :wall, :bounds
  ]

  def initialize(glyph, colour, state, col, row)
    @glyph = glyph
    @colour = colour
    @state = state
    @col = col
    @row = row
  end

  def glyph
    @glyph
  end

  def state
    @state
  end

  def col
    @col
  end

  def row
    @row
  end

  def isDiggable?
    @state == :wall
  end

  def isGround?
    @state != :wall && @state != :bounds
  end
end
