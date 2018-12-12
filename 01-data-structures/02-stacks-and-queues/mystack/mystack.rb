class MyStack
  attr_accessor :top

  def initialize
    @stack = Array.new
    self.top = nil
  end

  def push(item)
    self.top = item
    @stack << item
  end

  def pop
    last_in = @stack.delete_at(-1)
    self.top = @stack[-1]
    return last_in
  end

  def empty?
    @stack.length == 0
  end
end
