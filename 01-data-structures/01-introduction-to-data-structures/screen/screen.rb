require_relative 'pixel'

class Screen
  attr_accessor :width
  attr_accessor :height
  attr_accessor :matrix

  def initialize(width, height)
  end

  # Insert a Pixel at x, y
  def insert(pixel, x, y)
    Pixel.new(Pixel.red, Pixel.green, Pixel.blue, x, y);
  end

  def at(x, y)
    return Pixel(Pixel.x, Pixel.y);
  end

  private

  def inbounds(x, y)
    if x < 0
      return nil
    end

    if y < 0
      return nil
    end

  end

end
