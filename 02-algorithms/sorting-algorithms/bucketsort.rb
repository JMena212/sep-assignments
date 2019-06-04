require relative './quicksort'



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
#here we decide which bucket the value goes in

    #creates an array which houses k # of arrays
     buckets = Array.new(bucket_num)
     (0..buckets.length - 1).each do |i|
      buckets[i] = []
      end
   

     #we iterate through the original array, then divide each value into specific buckets
      (0..array.length-1).each do |i|
      bucket_index = ((array[i] - min) / bucket_range).floor
      if bucket_index > buckets.length - 1
      bucket_index = bucket_index -1
      end
      buckets[bucket_index].push(array[i])
      end

#time to sort the unsorted buckets











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

test = array_create(100).shuffle

bucketsort(test, k = 10)
