require_relative 'linked_list'

class SeparateChaining
  attr_reader :max_load_factor

  def initialize(size)
    @max_load_factor = 0.7
    @array = Array.new(size)
    @nodes = 0
  end

  def []=(key, value)
    @index = index(key, @array.length)
    new_entry = Node.new(key,value)
    chain = @array[@index]
    if chain != nil
      if @nodes >= 5 || load_factor > max_load
        resize
        chain.add_to_tail(new_entry)
      end
      chain.add_to_tail(new_entry)
    else
      chain = LinkedList.new
      chain.add_to_tail(new_entry)
    end
    chain = @array[@index]
    @nodes += 1
  end



    #1. Go to index and see if anything is there (entry is either nil or linked_list).
    #2. If nothing is there create linked list and insert new node with key and value
    #3. If something is there: first check the size (if size = 5, resize and call insert), if size less than 5 add to add_to_tail


    def [](key)
      chain = @array[@index]
      puts chain
      if chain != nil
        current_node = chain.head
        puts current_node
        while current_node != nil
          if current_node.key == key
            return current_node.value
            puts current_node
          end
          current_node = current_node.next
          puts current_node
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
      max_load = 0.7
    end

    # Simple method to return the number of items in the hash, same spot where i check size of linked_list
    def size
      @array.length
    end

    # Resize the hash
    def resize
      @size = @size * 2
      new_hash = Array.new(@size)
      @array.each do |node|
        if node != nil
          new_hash[index(node.key, @size)] = node
        end
      end
      @array = new_hash
    end
  end
