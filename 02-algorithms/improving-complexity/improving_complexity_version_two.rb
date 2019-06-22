
#IMPROVE TIME COMPLEXITY USING A BETTER ALGORITHM
#USE MERGESORT, never takes longer than nlogn

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


def merge_sort(array)

   if array.length <= 1
     array
   else
     # #2
     mid = (array.length / 2).floor
     left = merge_sort(array[0..mid - 1])
     right = merge_sort(array[mid..array.length])
     # #3
     merge(left, right)
   end
 end

 def merge(left, right)
   if left.empty?
     # #4
     right
   elsif right.empty?
     # #5
     left
   elsif left.first < right.first
     # #6
     [left.first] + merge(left[1..left.length], right)
   else
     # #7
     [right.first] + merge(left, right[1..right.length])
   end

 end



arrays =[[23,20,21,26,29],[35,33,31,30,37],[98,96,99,91,90]]
merge_sort(single_array(arrays))
