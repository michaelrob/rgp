module Colour
  def black
    Gosu::Color.argb(0xff_000000)
  end

  def blue
    Gosu::Color.argb(0xff_0000ff)
  end

  def red
    Gosu::Color.argb(0xff_ff0000)
  end

  def green
    Gosu::Color.argb(0xff_00ff00)
  end
end
