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
    #puts pivot
    if array[i] <= pivot
      swap(array, i, part_index)
      part_index += 1
    end
    i += 1
  end
  swap(array,part_index, r )

  return part_index
  end
