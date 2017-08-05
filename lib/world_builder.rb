require 'matrix'
require 'color'

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
    Matrix.build(@height, @width) do |w, h|
      Tile.new('#', Color.blue, :floor, w, h)
    end
  end

  def smooth(times)
    puts "smoothing"
  end
end
