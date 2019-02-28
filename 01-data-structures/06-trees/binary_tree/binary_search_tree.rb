require_relative 'node'

class BinarySearchTree
attr_accessor :root

  def initialize(root)
    @root = root || nil
  end

  def insert(root, node)
    if root == nil
      node = root
    elsif node.rating < root.rating
      if root.left == nil
         root.left = node
      else
        insert(root.left, node)
      end
    else node.rating > root.rating
      if root.right == nil
        root.right = node
      else
        insert(root.right, node)
      end
    end
  end

  # Recursive Depth First Search
  def find(root, data)
    if root && data
      if root.title == data
        return root
      elsif root.left
        find(root.left, data)
      elsif root.right
        find(root.right, data)
      end
    else root == nil || data == nil
      return nil
    end
    #go as far left as you can then right, use recursion
    #call left if you can otherwise call righ
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
  def printf(children=nil)
    #use a queue to track each node as it goes down each layer
    #start with root and go down each layer
    queue = []
    queue.push(@root)
    output = []
    while queue.length > 0
      next_root = queue.slice!(0)
      if next_root.left
        queue.push(next_root.left)
      end
      if next_root.right
        queue.push(next_root.right)
      end
      output.push("#{next_root.title}: #{next_root.rating}")
    end
    output.each {|x| print x, "\n"}
  end
end
