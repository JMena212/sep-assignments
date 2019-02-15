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
  end

  def delete(root, data)
  end

  # Recursive Breadth First Search
  def printf(children=nil)
  end
end
