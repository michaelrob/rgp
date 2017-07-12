class Game
  def initialize
    @steps = 0
    @world = generate_world()

    start_game
  end

private

  def generate_world
    world = WorldBuilder.new(10, 10)
    world.build()
  end

  def start_game
    @world.draw
  end
end
