class ArraySorting


 def insertion_sort(collection)
   # #1
   sorted_collection = [collection.delete_at(0)]

   for val in collection
     sorted_collection_index = 0
     # #2
     while sorted_collection_index < sorted_collection.length
       if val <= sorted_collection[sorted_collection_index]
         # #3
         sorted_collection.insert(sorted_collection_index, val)
         break
       elsif sorted_collection_index == sorted_collection.length - 1
         # #4
         sorted_collection.insert(sorted_collection_index + 1, val)
         break
       end

       sorted_collection_index += 1
     end
   end

   sorted_collection
 end

def bucketsort(array, k = 10)
n = array.length

# number of buckets we want to designate
bucket_num = k
#puts "#{bucket_num} buckets"
max = array.max
#puts "#{max} is max"
min = array.min
#puts "#{min} is min"

#the range of each bucket
bucket_range = ((max-min) / bucket_num).floor
#puts "bucket range is #{bucket_range}"
#here we decide which bucket the value goes in

    #creates an array which houses k # of arrays
     buckets = Array.new(bucket_num)
     (0..buckets.length - 1).each do |i|
      buckets[i] = []
      end


     #we iterate through the original array, then we place array values into specific buckets
      (0..array.length-1).each do |i|
      bucket_index = ((array[i] - min) / bucket_range).floor
      if bucket_index > buckets.length - 1
      bucket_index = bucket_index -1
      end
      buckets[bucket_index].push(array[i])
      end



    #join the buckets into one semi-ordered array
    k = 0
     single_array = []
     while k < buckets.length
        p = 0
        while p < buckets[k].length
         single_array.push(buckets[k][p])
          p+=1
         end
     k+=1
     end

     #use insertion_sort to sort the semi-ordered single array
insertion_sort(single_array)



end

end

def array_create(n)
  array = []
  i = 0
  (0..n).each do |i|
  array.push(i)
  i += 1
  end
  array
end
