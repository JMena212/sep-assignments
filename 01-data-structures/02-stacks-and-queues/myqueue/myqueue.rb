class MyQueue
  attr_accessor :head
  attr_accessor :tail

  def initialize
    @queue = Array.new
    @head = @queue[0]
  end


#Uses insert array function to add element at index -1, which would be the last element in the array
  def enqueue(element)
   @queue.insert(-1, element)
   @tail = @queue[-1]
   @head = @queue[0]
  end

#uses delete_at to remove the first element in the array
  def dequeue
    @queue.delete_at(0)
    @head = @queue[0]
    @tail = @queue[-1]
  end

#returns true if the array length is zero which indicates that it is empty
  def empty?
    @queue.length == 0
  end
end
