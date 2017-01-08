class Game
  ACTIONS = [
    :north, :east, :south, :west
  ]
  MISC_ACTIONS = [
    :help, :status, :exit, :close
  ]

  def initialize
    @steps = 0
    @world = World.new
    @player = Player.new

    start_game
  end

private

  def start_game
    action = ""
    initialize_game

    while @player.alive?

      @current_room = @world.get_room(@player)

      action = input
      unless MISC_ACTIONS.include?(action)
        # ToDo: we'll need to flesh this out a bit more
        status
        @steps += 1
      end

      next unless ACTIONS.include?(action) || MISC_ACTIONS.include?(action)
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

  def input
    puts "What should I do?"
    gets.chomp.to_sym
  end

  # toDo: at some point we should switch this into its own class
  # the actions could get really really big
  def take_action(action)
    # Non state changing actions
    exit           if action == :exit || action == :close
    help           if action == :help
    @player.status if action == :status

    # State changing actions
    @world.move_north(@player)      if action == :north
    @world.move_south(@player)      if action == :south
    @world.move_east(@player)       if action == :east
    @world.move_west(@player)       if action == :west
    @current_room.interact(@player) if action == :take
  end

  def help
    puts ""
    puts ""
    puts "RGP -- Text Based RPG"
    puts "Action commands"
    puts "-----------------------------"
    puts "north: moves the character north"
    puts "south: moves the character"
    puts "east: moves the character east"
    puts "west: moves the character west"
    puts "status: shows the current player status"
    puts "help: shows this screen"
    puts "exit: exits the game"
    puts ""
    puts ""
  end

  def status
    puts "You have taken #{@steps} steps"
    puts "You are at map coordinates [#{@player.x_pos}, #{@player.y_pos}]"

    puts @current_room
    # toDo: we'll need to also list content in the room
    # puts "you see @room.content"
  end
end
