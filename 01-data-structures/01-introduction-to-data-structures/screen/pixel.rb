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
    Pixel.red = red;
    Pixel.green = green;
    Pixel.blue = blue;
    Pixel.x = x;
    Pixel.y = y;

    if (red < 0)
      red == 0
    end

    if (red > 255)
      red == 0
    end

    if (green < 0)
      red == 0
    end

    if (green > 255)
      red == 0
    end
      
  end

  private

  def validate_color(color)
  end

end
