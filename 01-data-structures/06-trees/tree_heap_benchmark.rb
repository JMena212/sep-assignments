require 'benchmark'
require_relative 'binary_tree/node'
require_relative 'binary_tree/binary_search_tree'
require_relative 'binary_heap/min_binary_heap'


root = Node.new("root", 1)
binary_tree = BinarySearchTree.new(root)
min_heap = MinBinaryHeap.new(root)


n = 10000
#benchmark insert for tree and min_heap
Benchmark.bm(25) do |create|

create.report("BinaryTree 10,000") do
    queue = (1..n).to_a
   while !queue.empty?
     x = queue.slice!(0)
     node = Node.new("root", x)
      binary_tree.insert(root, node)
   end

   end


  create.report ("Heap 10,000") do
    queue = (1..n).to_a
   while !queue.empty?
     x = queue.slice!(0)
     node = Node.new("root", x)
      min_heap.insert(root, node)
   end

  end




#benchmark finding 5,000 in min_heap vs binary_tree


create.report("BinaryTree find 5,000") do
   binary_tree.find(root, n/2)
 end

create.report ("Heap find 5,000") do

    min_heap.find_rating(root, n/2)
  end




#benchmark deletion in min_heap vs binary_tree
create.report("BinaryTree delete 5,000") do
   binary_tree.delete(root, n/2)
 end


create.report ("Heap delete 5,000") do
    min_heap.delete_by_rating(root, n/2)
  end



end
