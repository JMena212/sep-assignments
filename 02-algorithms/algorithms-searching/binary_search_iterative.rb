def binary_search(collection, value)
 # #1
 low = 0
 high = collection.length - 1

 # #2
 while low <= high
   # #3
   mid = (low + high) / 2
   if mid > value
     # #4
     high = mid - 1
     puts "mid is higher than value"
   elsif mid < value
     # #5
     low = mid + 1
     puts "mid is less than value"
   else
     return mid
   end
 end

 # #7
 return "not found in collection"
 end

collection = Array(0..100)
puts binary_search(collection, 81)
