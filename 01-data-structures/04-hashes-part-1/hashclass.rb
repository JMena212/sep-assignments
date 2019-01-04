class HashClass

  def initialize(size)
    @items = Array.new(size)
  end

#setter
  def []=(key, value)
    @new_entry = HashItem.new(key, value)
    hash_index = index(key, @items.size)
    
  end

#getter
  def [](key)
    #retrieve the value at this key
    #Hash[key] = value
    if hash_item == nil
      return nil
    else
    hash_item = @items[index(key, @items.size)]
    return hash_item.value
  end

  def resize
    @size = @size * 2
    #reallocate everything in array based on new size
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    key.sum % size
  end

  # Simple method to return the number of items in the hash
  def size
   @size
  end

end
