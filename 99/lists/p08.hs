-- Eliminate consecutive duplicates of list elements.

{-
compress "aaabccaadeeee"
"abcade"
-}

-- foldr
compress :: (Eq a) => [a] -> [a]
compress = foldr f []
  where
    f x []  = [x]
    f x acc = if (head acc) /= x then x:acc else acc

-- recursive
compress' :: (Eq a) => [a] -> [a]
compress' []     = []
compress' [x]    = [x]
compress' (x:xs) = if x == (head xs) then compress' xs else x:(compress' xs)

-- same as above but with acc - tail rec like
compress'' :: (Eq a) => [a] -> [a]
compress'' = reverse . r []
  where
    r _ []       = []
    r acc [x]    = x:acc
    r acc (x:xs) = if x == (head xs) then r acc xs else r (x:acc) xs

-- TODO another folding
-- TODO drop or take
