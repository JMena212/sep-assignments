class ArraySorting


  def quicksort(array, p, r)
    if p < r
      part_index = partition(array, p , r)
      quicksort(array, p, part_index-1)
      quicksort(array, part_index+1, r)
    end
    array
  end

#this function swaps items in an array by placing the value at the respective index of the other value and vice versa
 def swap(array, firstIndex, secondIndex)
    temp = array[firstIndex]
    array[firstIndex] = array[secondIndex]
    array[secondIndex] = temp
  end


 def partition(array, p, r)
 pivot = array[r]
 part_index = p
 i = p

  while i < r
    puts pivot
    if array[i] <= pivot
      swap(array, i, part_index)
      part_index += 1
    end
    i += 1
  end
  swap(array,part_index, r )

  return part_index
  end



  def bucketsort(array, k = 10)
    n = array.length

    # number of buckets we want to designate
    bucket_num = k
    puts "#{bucket_num} buckets"
    max = array.max
    puts "#{max} is max"
    min = array.min
    puts "#{min} is min"

    #the range of each bucket
    bucket_range = ((max-min) / bucket_num).floor
    puts "bucket range is #{bucket_range}"


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
     #here we use quicksort within each bucket
     (0..buckets.length-1).each do |i|
      quicksort(buckets[i], 0, buckets[i].length-1)
      end


     k = 0
     final_array = []
     while k < buckets.length
        p = 0
        while p < buckets[k].length
         final_array.push(buckets[k][p])
          p+=1
         end
     k+=1

     end

     return final_array


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


test= ArraySorting.new

test_array = array_create(50).shuffle

test.bucketsort(test_array, k = 10)
