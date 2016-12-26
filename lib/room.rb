class Room
  attr_accessor :size, :content, :adjective
  
  def initialize
    @content = get_content
    @size = get_size
    @adjective = get_adjective
  end

private
  def get_content
  end

  def get_size
  end

  def get_adjective
  end
end
