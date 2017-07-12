class Tile
  STATE = [
    :floor, :wall, :bounds
  ]

  def initialize(glyph, colour, state)
    @glyph = glyph
    @colour = colour
    @state = state
  end

  def glyph
    @glyph
  end

  def state
    @state
  end

  def isDiggable?
    @state == :wall
  end

  def isGround?
    @state != :wall && @state != :bounds
  end
end