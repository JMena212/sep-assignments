def fib(n)
   if (n == 0)
     # #1
     return 0
   elsif (n == 1)
     # #2
     return 1
   else
     # #3
     return fib(n-1) + fib(n-2)
   end
 end

*/
1. Given an unsorted collection of a million items,
which algorithm would you choose between linear search and binary search?
Would you use an iterative or recursive solution? Explain your reasoning.

In this case I would use a linear search iterative solution. Binary searches require sorted
collections and wouldn't be helpful in this example. Recursion also takes much longer to process
with large amounts of data.

2.Given a sorted collection of a million items,
which algorithm would you choose between linear search and binary search?
Would you use an iterative or recursive solution? Explain your reasoning.

In a sorted collection of a million items, I would use a binary search using recursion.


/*
