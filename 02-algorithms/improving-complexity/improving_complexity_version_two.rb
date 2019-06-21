
#IMPROVE TIME COMPLEXITY USING A BETTER ALGORITHM
#USE QUICKSORT


def poorly_written_ruby(arrays)
   combined_array = []
   arrays.each do |array|
     array.each do |value|
       combined_array << value
     end
   end

   #sorted_array = [combined_array.delete_at(combined_array.length-1)]
   #Simpler way to set variable as array with last item of combined_array
   sorted_array = [combined_array[-1]]


#this is while loop nested within a for loop
   for val in combined_array
     i = 0
     while i < sorted_array.length
       if val < sorted_array[i]
         sorted_array.insert(i, val)
         break
       elsif i == sorted_array.length - 1
         sorted_array << val
         break
       end
       i+=1
     end
   end

   # Return the sorted array
   sorted_array
 end
