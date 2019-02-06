require_relative 'linked_list'

class SeparateChaining
  attr_reader :max_load_factor

  def initialize(size)
    @max_load_factor = 0.7
    @array = Array.new(size)
  end

def []=(key, value)
   i = index(key,size)
   entry = @array[i]
   new_entry = Node.new(key,value)

   oldHead = @array[i]
   if oldHead
     oldHead = head.next
   end

1. Go to index and see if anything is there (entry is either nil or linked_list).
2. If nothing is there create linked list and insert new node with key and value
3. If something is there: first check the size (if size = 5, resize and call insert), if size less than 5 add to add_to_tail



#at index reference the node

#add_to_front

=begin
COMPUTE the hash code for key, ASSIGN to index
  GET array[index], ASSIGN to oldHead
  SET array[index] to a link that contains key and value
  IF oldHead exists THEN
      SET oldHead as the second link in the chain
  END IF
=end

  end

  def [](key)
  i = index(key, size)



=begin
     COMPUTE the hash code for key, ASSIGN to index
     GET array[index], ASSIGN to head
     IF head exists THEN
         WHILE the next link in the chain exists
             IF the key at the current link equals key THEN
               RETURN this link's value
             END IF
             SET the current link to the next link in the chain
         END WHILE
     END IF
     RETURN nothing

 END DEF

=end


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
    @array/@size
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
end
