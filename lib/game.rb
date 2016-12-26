class Game
  def initialize
    @steps_taken = 0
    start_game
  end

  def start_game
    while true
      puts "you have taken #{@steps_taken} steps"
      @steps_taken += 1
    end
  end
end
