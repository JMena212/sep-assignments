
#IMPROVE THE SPACE COMPLEXITY BY USING A DIFFERENT DATA STRUCTURE

#Best for space complexity: bubblesort, no copies or recursive call

def single_array(arrays)
k = 0
    unsorted_array = []
    while k < arrays.length
       p = 0
       while p < arrays[k].length
        unsorted_array.push(arrays[k][p])
         p+=1
        end
    k+=1
    end
    unsorted_array
end

def bubble_sort(collection)
  n = collection.length
  # #1
  begin
    swapped = false

    # #2
    (n - 1).times do |i|
      # #3
      if collection[i] > collection[i + 1]
        tmp = collection[i]
        collection[i] = collection[i + 1]
        collection[i + 1] = tmp
        swapped = true
      end
    end
  end until not swapped

  collection
end
arrays =[[23,20,21,26,29],[35,33,31,30,37],[98,96,99,91,90]]
bubble_sort(single_array(arrays))
