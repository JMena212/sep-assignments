# A line of people at an amusement park ride
# There is a front to the line, as well as a back.
# People may leave the line whenever they see fit and those behind them take their place.
class Line
  attr_accessor :members

  def initialize
    self.members = []
  end

  def join(person)
    self.members << person;
    return self.members;
  end

  def leave(person)
    self.members.delete(person);
  end

  def front
    self.members(0);
  end

  def middle
    var middle = ((self.members.length)/2).ceil
    return self.members(middle)
  end

  def back
    self.members(array.length);
  end

  def search(person)
    self.members.bsearch {|x| x === person};
  end

  private

  def index(person)
  end

end
