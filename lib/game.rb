class Game
  ACTIONS = [
    :north, :east, :south, :west, :status
  ]
  
  def initialize
    @steps = 0
    @player = Player.new
    start_game
  end

private

  def start_game
    while @player.alive? && steps <= 100
      puts "you have taken #{@steps} steps"

      steps_to_take = gets.to_i
      @steps += 1
    end
  end
end
