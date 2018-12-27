require_relative 'node'

class LinkedList
  attr_accessor :head
  attr_accessor :tail


  # This method adds `node` to the front of the list and must set the list's head to `node`.
  def add_to_front(node)
    tempNode = @head
    @head = node
    @head.next = tempNode
    if @tail == nil
      @tail = node
    end
  end

  # This method creates a new `Node` using `data`, and inserts it at the end of the list.
  def add_to_tail(node)
    @tail.next = node if @tail
    @tail = node
    if @head == nil
      @head = node
    end
  end


  # This method removes the last node in the lists and must keep the rest of the list intact.
  def remove_tail
    if @tail == nil
      return nil
    elsif @tail == @head
      @tail = nil
      @head = nil
    else
      currentNode = @head
      until currentNode.next == @tail
        currentNode = currentNode.next
      end
      currentNode.next = nil
      @tail = currentNode
    end
  end


  # This method prints out a representation of the list.
  def print
    currentNode = @head
    while currentNode != nil
      puts currentNode.data
      currentNode = currentNode.next
    end

  end

  # This method removes `node` from the list and must keep the rest of the list intact.
  def delete(node)


  end
  # This method removes and returns the first node in the Linked List and must set Linked List's head to the second node.
  def remove_front

  end

end
