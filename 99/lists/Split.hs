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

-- foldl; length is O(N)
split' :: [a] -> Int -> ([a], [a])
split' xs n = foldl (\acc x -> if (length$fst$acc) < n then (((fst acc) ++ [x]), (snd acc)) else ((fst acc), (snd acc) ++ [x])) ([],[]) xs

-- foldl; without get length. separate helper f
split'' :: [a] -> Int -> ([a], [a])
split'' xs n = snd $ foldl f (0, ([],[])) xs
  where f (i, (l,r)) x = if i < n then (i+1, (l++[x], r)) else (i+1, (l, r++[x]))

