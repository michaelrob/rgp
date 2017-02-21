class Room
  attr_accessor :size, :content, :adjective

  def initialize
    @content = get_content
    @size = get_size
    @adjective = get_adjective
  end

  # ToDo: this needs to be fleshed out when we get some content added
  def interact
    if @content
      @content.interact(player)
      @content = nil
    end
  end

  def to_s
    "You are in a #{@size} room. It is #{@adjective}"
  end

  def has_toom_to_the?(direction)
  end

private
  def get_content
    [Potion, Item].sample.new
  end

  def get_size
    ["small", "medium", "large"].sample
  end

  def get_adjective
    ["pretty", "ugly", "unsightly"].sample
  end
end
