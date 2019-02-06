require_relative 'node'

class OpenAddressing
  def initialize(size)
    @nodes = Array.new(size)
    @size = size
  end

  def []=(key, value)
    i = index(key, size)
    entry = @nodes[i]
    new_entry = Node.new(key,value)
    if entry == nil || entry.value == value
    @nodes[i] = new_entry
    elsif entry.key != key
      while @nodes[index(key, @size)].key != nil && @nodes[index(key, @size)].key != key
        self.resize
        new_index = index(key, @size)
        break if @nodes[new_index] == nil
      end
      self[key] = value
    elsif entry.key == key && entry.value != value
      if next_open_index(i) == -1
        self.resize
        new_index = index(key, @size)
        @nodes[new_index].value = value
      else
        open_index = next_open_index(index(key, @size))
        @nodes[open_index] = value
      end
    end
  end

  def [](key)
    node = @nodes[self.index(key, @size)]
    if node == nil
      nil
    else
      node.value
    end
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    key.sum % size
  end

  def next_open_index(index)
    while @nodes[index]
      index += 1
    end
    if index >= @size
      return -1
    else
      return index
    end
  end

  def size
    @nodes.length
  end

  def resize
    @size = @size * 2
    new_hash = Array.new(@size)
    @nodes.each do |node|
      if node != nil
        new_hash[index(node.key, @size)] = node
      end
    end
    @nodes = new_hash
  end

end
