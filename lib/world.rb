class World 
  def initialize(tiles)
    @tiles = tiles
  end

  def name
    @name
  end

  def name=(new_name)
    @name = new_name
  end

  def tiles
    @tiles
  end

  def draw
    @tiles.each do |tile|
      print tile.glyph
      # puts '' if tile.row == @width - 1
    end
  end
end