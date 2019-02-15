require_relative 'node'

class BinarySearchTree

  def initialize(root)
    @root = root
  end

  def insert(root, node)
    if node.rating <= root.rating
      if root.left = nil
        node = root.left
      else
        insert (root.left, node)
      end
    else node.rating > root.rating
      if root.right = nil
        node = root.right
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
