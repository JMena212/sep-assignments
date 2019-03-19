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
    for i in 0..n-1 do
     node = Node.new(binary_tree, Random.rand(n))
     binary_tree.insert(root, node)
   end
end

  create.report ("Heap 10,000") do
    for i in 1..n do
      node = Node.new(min_heap, Random.rand(n))
      min_heap.insert(root, node)
    end
  end



#benchmark finding 5,000 in min_heap vs binary_tree
find_node = Node.new("find", 5000)
min_heap.insert(root, find_node)
binary_tree.insert(root, find_node)

create.report("BinaryTree find 5,000") do
  for i in 0..n-1 do
   binary_tree.find(root, "5000")
 end
end

create.report ("Heap find 5,000") do
  for i in 1..n do
    min_heap.find(root, "5000")
  end
end



#benchmark deletion in min_heap vs binary_tree
create.report("BinaryTree delete 5,000") do
  for i in 0..n-1 do
   binary_tree.delete(root, "5000")
 end
end

create.report ("Heap delete 5,000") do
  for i in 1..n do
    min_heap.delete(root, "5000")
  end
end


end
