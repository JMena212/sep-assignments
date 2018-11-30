# Pixels require three color values: red, green, and blue.
# Pixel colors red, green, and blue values must be greater than zero and less than 255.
# If  a value less than zero is specified, default to zero. If a value greater than 255 is specified, default to 255.
# Pixels also require a coordinate location: x and y.

class Pixel
  attr_accessor :red
  attr_accessor :green
  attr_accessor :blue
  attr_accessor :x
  attr_accessor :y



  def initialize(red, green, blue, x, y)
    self.red = red
    self.green = green;
    self.blue = blue;
    self.x = x;
    self.y = y;
  end

  private

  def validate_color(color)if (red < 0)
    self.red == 0
  end

  if (red > 255)
    self.red == 255
  end

  if (green < 0)
    self.green == 0
  end

  if (green > 255)
    self.green == 255
  end

  if (blue < 0)
    self.blue == 0
  end

  if (blue > 255)
    self.blue == 255
  end

  end

end
