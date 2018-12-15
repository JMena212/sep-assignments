require_relative 'node'

class LinkedList
  attr_accessor :head
  attr_accessor :tail

  # This method adds `node` to the front of the list and must set the list's head to `node`.
  def add_to_front(node)
    tempNode = @head
    @head = node
    @head.next = tempNode
  end

  # This method creates a new `Node` using `data`, and inserts it at the end of the list.
  def add_to_tail(node)
      @tail.next = node if @tail
      @tail = node
  end


  # This method removes the last node in the lists and must keep the rest of the list intact.
  def remove_tail
      currentNode = @head
      while currentNode.next
        if currentNode.next = @tail
          @tail = currentNode
          @tail.next = nil
        end
  currentNode = currentNode.next
      end
          currentNode = currentNode.next
  end

  # This method prints out a representation of the list.
  def print
    currentNode = @head
    puts currentNode
    while currentNode
      puts currentNode
      currentNode = currentNode.next
    end
  end

  # This method removes `node` from the list and must keep the rest of the list intact.
  def delete(node)
    currentNode = @head
    while currentNode.next
      if currentNode == node
        node = nil
      end
      currentNode = currentNode.next
    end
  end


  # This method removes and returns the first node in the Linked List and must set Linked List's head to the second node.
  def remove_front

  end
end
