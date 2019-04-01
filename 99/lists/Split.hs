{-
Split a list into two parts; the length of the first part is given.
Do not use any predefined predicates.

split "abcdefghik" 3
("abc", "defghik")
-}

module Split where

-- recursion straight forward
split :: [a] -> Int -> ([a], [a])
split xs 0 = ([], xs)
split [] _ = ([], [])
split xs k = f xs [] [] k
  where f (h:tail) left right k = if k == 0 then (left, right) else f tail (left++[h]) tail (k-1)

