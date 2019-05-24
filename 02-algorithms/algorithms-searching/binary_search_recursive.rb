def binary_search(collection, value, low, high)
mid = (low + high) /2
puts mid
  if mid == value
  puts "found #{value}"
  elsif mid < value
    binary_search(collection, value, mid + 1, high)
  else mid > value
    binary_search(collection , value, low, mid - 1)
  end


end

collection = Array(0..100)
puts binary_search_r(collection, 14, 0, 100)
