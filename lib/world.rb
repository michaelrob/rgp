class World 
  def initialize(tiles, width, height)
    @tiles = tiles
    @width = width
    @height = height
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

  def width
    @width
  end

  def height
    @height
  end

  def get_cell(col, row)
    @tiles[col, row]
  end

  def draw
    @tiles.each do |tile|
      print tile.glyph
      puts '' if tile.row == @width - 1
    end
  end
end