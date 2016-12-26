class Game
  def initialize
    @steps_taken = 0
    @player = Player.new
    start_game
  end

  def start_game
    while true
      puts "you have taken #{@steps_taken} steps"
      steps_to_take = gets.chomp.to_i
      @steps_taken += 1
    end
  end
end
