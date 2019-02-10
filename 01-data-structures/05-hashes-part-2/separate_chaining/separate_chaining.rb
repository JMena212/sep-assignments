require_relative 'linked_list'

class SeparateChaining
  attr_reader :max_load_factor

  def initialize(size)
    @max_load_factor = 0.7
    @array = Array.new(size)
    @nodes = 0.0
  end


  def []=(key, value)
    @index = index(key, @array.length)
    new_entry = Node.new(key,value)
    chain = @array[@index]
    if chain != nil
    @nodes = @nodes + 1
      if @nodes >= 5 || load_factor > @max_load_factor
        resize
        chain.add_to_tail(new_entry)
      end
      chain.add_to_tail(new_entry)
    else
    @nodes = @nodes + 1
      @array[@index] = LinkedList.new
      @array[@index].add_to_tail(new_entry)
    end
    chain = @array[@index]
  end


    #1. Go to index and see if anything is there (entry is either nil or linked_list).
    #2. If nothing is there create linked list and insert new node with key and value
    #3. If something is there: first check the size (if size = 5, resize and call insert), if size less than 5 add to add_to_tail

   def [](key)
    i = index(key, size)
    if @array[i]
      node = @array[i].head
      while node != nil
        return node.value if node.key == key
        node = node.next
      end
    end
  end
    # Returns a unique, deterministically reproducible index into an array
    # We are hashing based on strings, let's use the ascii value of each string as
    # a starting point.
    def index(key, size)
      key.sum % size
    end

    # Calculate the current load factor
    #if load factor is greater than certain value then resize
    def load_factor

     @nodes / @array.length

    end

    # Simple method to return the number of items in the hash, same spot where i check size of linked_list
    def size
      @array.length
    end

    # Resize the hash
    def resize
      @size = size * 2
      new_hash = Array.new(@size)
      @array.each do |nodes|
        if nodes
          current_node = nodes.head
          while current_node
            i = index(current_node.key, new_hash.size)
            if new_hash[i].nil?
              new_hash[i] = LinkedList.new
            end
              new_hash[i].add_to_tail(Node.new(current_node.key,current_node.value))
              current_node = current_node.next
            end
          end
          @array = new_hash
        end
  end
end
