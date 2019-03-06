require_relative 'node'

class MinBinaryHeap
attr_accessor :root

  def initialize(root)
    @queue = Array.new
    @root = queue[0]
  end

  def insert(root, node)



  end

  def enqueue(element)
     @queue.insert(-1, element)
      @tail = @queue[-1]
      @head = @queue[0]

    end


  #Breadth first
   def find(root, data)

  end

  def delete(root, data)


  end

  # Recursive Breadth First Search
  def print(root)
    #use a queue to track each node as it goes down each layer
    #start with root and go down each layer

end
