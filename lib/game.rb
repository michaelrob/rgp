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
    while @player.alive?
      @current_room = @world.get_room(@player)

      # ToDo: we'll need to flesh this out a bit more
      status

      action = input
      next unless ACTIONS.include? action
    end
  end

  def input
    puts "give me something to do"
    gets.chomp.to_sym
  end

  def status
    puts "you have taken #{@steps} steps"
    @steps += 1

    puts @current_room
  end
end
