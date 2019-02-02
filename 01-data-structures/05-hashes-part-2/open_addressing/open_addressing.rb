require_relative 'node'

class OpenAddressing
  def initialize(size)
   @nodes = Array.new(size)
   @size = size 
  end

  def []=(key, value)
    new_entry = Node.new(key, value)
      entry = index(key,size)
      if @items[entry] == nil  || @items[entry].value  == value
        @items[entry] = new_entry
      elsif @items[entry].key != new_entry.key
        self.resize
        self[key] = value
      else @items[entry].value != new_entry.value
        self.resize
        @items[entry] = value
      end
    end

  def [](key)
    @items[self.index(key, self.size)].value
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    key.sum % size
  end

  # Given an index, find the next open index in @items
  def next_open_index(index)
    while @nodes[index]
      index += 1
    end
    if
  end

  # Simple method to return the number of items in the hash
  def size
    @items.length
  end

  # Resize the hash
  def resize
    small_hash = @items.compact #compact removes nil and the error related to calling .key or .value on a nil array element!!!
    @items = Array.new(self.size * 2)
    small_hash.each do |entry|
        self[entry.key] = entry.value
      end
  end
end
