class Game
  ACTIONS = [
    :north, :east, :south, :west, :status, :exit, :close, :help
  ]

  def initialize
    @steps = 0
    @world = World.new
    @player = Player.new

    start_game
  end

private

  def start_game
    initialize_game

    while @player.alive?
      @current_room = @world.get_room(@player)

      # ToDo: we'll need to flesh this out a bit more
      status
      @steps += 1

      action = input

      next unless ACTIONS.include? action
      take_action(action)
    end
  end

  def initialize_game
    # We want to get initial details about the player
    # Name, age, class maybe
    puts "Hello adventurer."
    puts "Do you have a name?"
    @player.name = gets.chomp.to_sym

    puts "=============================="
    puts "#{@player.name} begins his adventure. Go forward and see what treasure awaits you!!"
    puts "=============================="
  end

  def help
    # toDo: flesh this out a bit more
    # toDo: this still moves the player one step, we'll need to fix that up
    puts "Help text"
  end

  def input
    puts "give me something to do"
    gets.chomp.to_sym
  end

  def status
    puts "You have taken #{@steps} steps"
    puts "You are at map coordinates [#{@player.x_pos}, #{@player.y_pos}]"

    puts @current_room
    # toDo: we'll need to also list content in the room
    # puts "you see @room.content"
  end

  # toDo: at some point we should switch this into its own class
  # the actions could get really really big
  def take_action(action)
    exit if action == :exit || action == :close

    @player.status if action == :status

    help if action == :help
  end
end
