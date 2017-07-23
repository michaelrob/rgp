require 'matrix'

class WorldBuilder
  def initialize(width, height)
    @width = width
    @height = height
    @tiles = make()
  end

  def build()
    World.new(@tiles, @width, @height)
  end
  
private

  def make()
    # fills out @tiles with a new matrix of tiles
    Matrix.build(@height, @width) do |w, h|
      Tile.new('*', :blue, :floor, w, h)
    end
  end
  
  def smooth(times)
    puts "smoothing"
  end
end
