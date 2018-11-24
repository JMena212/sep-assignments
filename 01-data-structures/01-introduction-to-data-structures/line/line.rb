# A line of people at an amusement park ride
# There is a front to the line, as well as a back.
# People may leave the line whenever they see fit and those behind them take their place.
class Line
  attr_accessor :members

  def initialize
    self.members = []
  end

  def join(person)
    Line << person;
  end

  def leave(person)
    Line.delete(person);
  end

  def front
    Line[0];
  end

  def middle
    var middle = ((Line.length)/2).ceil
    return Line[middle]
  end

  def back
    Line[Line.length - 1];
  end

  def search(person)
    Line.bsearch {|x| x === person};
  end

  private

  def index(person)
  end

end
