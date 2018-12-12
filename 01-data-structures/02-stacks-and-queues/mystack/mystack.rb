class MyStack
  attr_accessor :top

  def initialize
    @stack = Array.new
    self.top = nil
  end

#adds item to the "top" which would be the back of the array using shovel operator
  def push(item)
    self.top = item
    @stack << item
  end

#pop function removes the last item in a given array and returns it. Here used the delete_at function at index -1 and returned that item
  def pop
    last_in = @stack.delete_at(-1)
    self.top = @stack[-1]
    return last_in
  end

  def empty?
    @stack.length == 0
  end
end
