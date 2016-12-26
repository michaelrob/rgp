class Game
  MAX_HITPOINTS = 100

  def initialize
    @hit_points = MAX_HITPOINTS
    @steps_taken = 0
    start_game
  end

  # mmm this could do with some cleaning up
  # we should move it into its own class
  def hurt_player(amount)
    @hit_points -= amount
  end

  def start_game
    while true
      puts "you have taken #{@steps_taken} steps"
      steps_to_take = gets.chomp.to_i
      @steps_taken += 1
    end
  end
end
