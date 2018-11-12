-- This implement sets a head element to a pivot to compare elementes 
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = 
     let left = quicksort [a | a <- xs, a <= x]
         right = quicksort [a | a <- xs, a > x]
     in left ++ [x] ++ right 


-- *Main> quicksort "the quick brown fox jumps over the lazy dog"
