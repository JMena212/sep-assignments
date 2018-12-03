# A line of people at an amusement park ride
# There is a front to the line, as well as a back.
# People may leave the line whenever they see fit and those behind them take their place.
class Line
  attr_accessor :members

  def initialize
    self.members = []
  end

  def search(person)
   target = []
   members.each do |member|
     if person == member
       target << member
     end
   end
   return target[0]
  end

  def join(person)
    members << person;
  end

  def front
    members[0];
  end

  def leave(person)
    members.delete(person)
  end

  def middle
    middle = ((members.length)/2).ceil;
    return members[middle];
  end

  def back
    members[members.length - 1];
  end


  private

  def index(person)
  end

end
