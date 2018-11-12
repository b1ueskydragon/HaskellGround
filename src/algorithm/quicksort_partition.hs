import Data.List

quickSort' :: Ord a => [a] -> [a]
quickSort' [] = []
quickSort' (x:xs) = quickSort' left ++ [x] ++ quickSort' right
     where (left, right) = partition ( < x) xs

-- TODO: quicksort tail recursion, quicksort with queue
