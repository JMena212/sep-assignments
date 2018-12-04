require_relative 'pixel'

class Screen
  attr_accessor :width
  attr_accessor :height
  attr_accessor :matrix

  def initialize(width, height)
    @width = width;
    @height = height;
    @matrix = Array.new(@height) {Array.new(@width)}
  end
  # Insert a Pixel at x, y
  def insert(pixel, x, y)
    @matrix[x][y] = pixel
  end

  def at(x, y)
    inbounds(x,y)? @matrix[x][y] : nil
  end

  private

  def inbounds(x, y)
    if x < 0
      return nil
    else x
    end

    if y < 0
      return nil
    else y
    end

  end

end
