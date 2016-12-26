class Game
  ACTIONS = [
    :north, :east, :south, :west, :status
  ]

  def initialize
    @steps = 0
    @world = World.new
    @player = Player.new

    start_game
  end

private

  def start_game
    while @player.alive? && steps <= 100
      @current_room = @world.get_room(@player)

      # ToDo: we'll need to flesh this out a bit more
      status



      puts "you have taken #{@steps} steps"

      steps_to_take = gets.to_i
      @steps += 1
    end
  end

  def status
    puts @current_room
  end
end
