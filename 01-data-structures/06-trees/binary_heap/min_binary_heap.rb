require_relative 'node'


class Node
  attr_accessor :title
  attr_accessor :rating
  attr_accessor :left
  attr_accessor :right

  def initialize(title, rating)
    @title = title
    @rating = rating
    left = nil
    right = nil
  end



end


class MinBinaryHeap
attr_accessor :root

  def initialize(root)
    @root = root

  end

#1.Breadth first search to find first empty spot in tree
#2.If node does not have .left insert node at that .left
#Otherwise, check if .right exists, if not, push to .right
#Otherwise, add current node to the queue
#Once inserted find the node's parent and ask if swap needs to happen. If swap is necessary, just swap title/rating.
#Once swapped, compare to the new parent
#If there's an empty spot that's where you want to insert
# entry = Node.new(root, data)



def insert(root, node)
  if @root == nil
       @root = root
  end

    queue = Queue.new
    queue.enq(root)
    while !queue.empty?
      parent_root = queue.deq

      if parent_root.left == nil
      parent_root.left = node
      break
      end

      if parent_root.right == nil
      parent_root.right = node
      break
      end

      if parent_root.left
      queue.enq(parent_root.left)
      end

      if parent_root.right
      queue.enq(parent_root.right)
      end

    end
     parent = parent_root



    #Ensure that nodes follow heap rules. Lower ratings should be higher in the tree


    while parent != nil && node.rating < parent.rating
     temp_rating = node.rating
     temp_title = node.title
     node.title = parent.title
     node.rating = parent.rating
     parent.rating = temp_rating
     parent.title = temp_title

     node = parent
     parent = find_parent(@root, node)
    end


@root
end





def find_parent(root, node)
    parent = root
    if node == @root
     #no parent
     return nil
    end

    if parent.left == node || parent.right == node
       return parent
    end
    left = find_parent(parent.left, node) if parent.left
    right = find_parent(parent.right, node) if parent.right

    return left || right

end



  #Depth First
  def find(root, data)
      if root && data
        if root.title == data
          return root
        end
        left = find(root.left, data) if root.left
        right = find(root.right, data) if root.right
        return left || right

      else root == nil || data == nil
        return nil
      end
  end



  def delete(root, data)
    if root == nil || data == nil
      return nil
    else
      delete_node = find(root, data)
      if delete_node
        delete_node.title = nil
        delete_node.rating = nil
      else
        return nil
      end
    end

  end

  # Recursive Breadth First Search
  def print(root)
    queue = Queue.new
    queue.enq(root)
    output = []
    while !queue.empty?
    parent_root = queue.deq
      if parent_root.left
        queue.enq(parent_root.left)
      end

      if parent_root.right
      queue.enq(parent_root.right)
      end

      puts "Title: " + parent_root.title + " Rating: " + parent_root.rating.to_s

    end
  end

end
