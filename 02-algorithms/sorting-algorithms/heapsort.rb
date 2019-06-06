
#swap function switches the index of values in the array

def swap(array, firstIndex, secondIndex)
    temp = array[firstIndex]
    array[firstIndex] = array[secondIndex]
    array[secondIndex] = temp
  end


def heapsort(array)

  last = array.length - 1
  return array if last <= 1


  #creates the starting unsorted array
  a = array


  #fulfills qualities of max heap
  max_heap(array)


  while last > 0
  swap(array, 0 , last )
  last -=1
  sift_down(array, 0, last)
  end

  return array
end




def max_heap(array)
  start = (array.length - 2) / 2
  last = array.length - 1
    while start >= 0
      sift_down(array, start, last)
      #puts "start is #{start}"
      start -= 1
    end
    array
end


def sift_down(array, start, last)
  root = start
  #puts "root is #{root}"
  child = root * 2 + 1
  while child <= last
  #puts "child is #{child}"
    if child + 1 <= last && array[child] < array[child+1]
      child +=1
    end
    if array[root] < array[child]
    #puts "array[root] is #{array[root]}"
      swap(array, root, child)
      root = child
    else
      break
    end
  end

end
