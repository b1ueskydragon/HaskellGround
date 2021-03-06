{-
Eliminate consecutive duplicates of list elements.

compress "aaabccaadeeee"
"abcade"
-}

module Compress where

-- foldr
-- not so efficient, because
-- it pushes the whole input onto the "stack" before doing anything else
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

compress''' :: Eq a => [a] -> [a]
compress''' []     = [] 
compress''' (x:xs) = x : compress'''(dropWhile (==x) xs)

-- (const []) is an init acc
-- erase Maybe
compress'''' xs = foldr f (const []) xs Nothing
  where
    f x acc a@(Just x') | x == x' = acc a
    f x acc _                     = x : acc (Just x)

