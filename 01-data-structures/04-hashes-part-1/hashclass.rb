class HashClass

  def initialize(size)
    @items = Array.new(size)
    @size = size
  end

#setter? @items.size
  def []=(key, value)
    hash_index = index(key, size) #items.size
    new_entry = HashItem.new(key, value)

  

  end

#getter
  def [](key)
    #retrieve the value at this key
    #Hash[key] = value
    hash_item = @items[index(key, @items.size)]

  end

#resize works
  def resize
    @size = @size * 2
    new_hash = Array.new(@size)

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
