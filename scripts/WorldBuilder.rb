require 'matrix'

class WorldBuilder
  def initialize(width, height)
    @width = width
    @height = height
    # possibly use matrix here instead of array
    @tiles = make()
  end

  def build()
    puts "building"
  end

  def make()
    randomize()
    smooth(8)
  end
  
private 

  def randomize()
    # fills out @tiles with a new tile object
    Matrix.build(@height, @width) do |w, h|
      # Tile.new()
    end
  end
  
  def smooth(times)
    puts "smoothing"
  end
end

world = WorldBuilder.new(10, 10)
world.build()
world.makeCaves()
