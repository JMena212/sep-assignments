require 'benchmark'
require_relative 'heapsort'
require_relative 'bubblesort'
require_relative 'bucketsort'
require_relative 'merge_sort'
require_relative 'insertion_sort'
require_relative 'quicksort'

def array_create(n)
  array = []
  i = 0
  (0..n).each do |i|
  array.push(i)
  i += 1
  end
  array
end

n = 50

Benchmark.bm(20) do |create|

create.report("Heap Sort 50 items") do
    test_array = array_create(n).shuffle
    heapsort(test_array)
   end
end

Benchmark.bm(20) do |create|

create.report("bubblesort 50 items") do
    test_array = array_create(n).shuffle
    bubble_sort(test_array)
   end
end

Benchmark.bm(20) do |create|

create.report("bucketsort 50 items") do
    test_array = array_create(n).shuffle
    test= ArraySorting.new
    test.bucketsort(test_array, k = 10)


   end
end

Benchmark.bm(20) do |create|

create.report("merge_sort 50 items") do
    test_array = array_create(n).shuffle
    merge_sort(test_array)
   end
end

Benchmark.bm(20) do |create|

create.report("insertion_sort 50 items") do
    test_array = array_create(n).shuffle
    insertion_sort(test_array)
   end
end


Benchmark.bm(20) do |create|

create.report("quicksort 50 items") do
    test_array = array_create(n).shuffle
    quicksort(test_array, 0, n)
   end
end
