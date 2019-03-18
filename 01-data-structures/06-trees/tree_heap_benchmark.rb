require_relative 'binary_tree/node'
require_relative 'binary_tree/binary_search_tree'
require_relative 'binary_heap/min_binary_heap'


binary_tree = BinarySearchTree.new(root)
min_heap = MinBinaryHeap.new(root)



#benchmark insert for tree and min_heap


#benchmark finding 50,000 in min_heap vs binary_tree


#benchmark deletion in min_heap vs binary_tree
