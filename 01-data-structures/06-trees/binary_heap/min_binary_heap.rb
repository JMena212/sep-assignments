require_relative 'node'


class MinBinaryHeap
attr_accessor :root

  def initialize(root)
    @queue = [0]
    @root = root
  end

  def insert(root, data)
  entry = Node.new(root, data)

  if @root == nil
      @root = entry
  end


    queue = [@root]
    while queue.length > 0
      next_root = queue.shift
      if next_root.left == nil
        next_root.left = entry
        puts entry.title
      end
      if next_root.right == nil
        next_root.right = entry
        puts entry.title 
      end
      if next_root.left && next_root.right
        queue.push(next_root.left)
        queue.push(next_root.right)
      else break
      end

    end






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

end
