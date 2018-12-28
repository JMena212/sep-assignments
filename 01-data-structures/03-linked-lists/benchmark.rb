require_relative 'node'
require_relative 'linked_list'
require 'benchmark'

n = 10000
array = []
linked_list = LinkedList.new

#benchmarking for creating a 10,000 item array and linked list
Benchmark.bm do |create|

  create.report("array 10,000") do
    for i in 0..n-1 do
     array[i] = i + 1
   end
end

  create.report ("node 10,000") do
    for i in 1..n do
      node = Node.new(i)
      linked_list.add_to_tail(node)
    end
  end
end

#benchmarking for finding the 5000th element in the array/linkedlist
Benchmark.bm do |index|
  index.report(" array index 5000") do
    array[5000]
    end

  index.report ("5000th list item") do
    linked_list.at(5000)
  end
end


#benchmarks for removing the 5000 element in an array and the 5000th node in linked list

Benchmark.bm do |remove|
  remove.report("array pop 5000") do
    array.slice!(5000)
    end

  remove.report ("linked list delete") do
    linked_list.delete(linked_list.at(5000))
  end
end
