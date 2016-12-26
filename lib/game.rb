class Game
  def initialize
    @steps_taken = 0
    @player = Player.new
    start_game
  end

private

  def start_game
    while @player.alive?
      puts "you have taken #{@steps_taken} steps"
      steps_to_take = gets.to_i
      @steps_taken += 1
    end
  end
end
