{-
Duplicate the elements of a list.

dupli [1, 2, 3]
[1,1,2,2,3,3]
-}

module Dupli where

dupli :: [a] -> [a]
dupli []     = []
dupli (x:xs) = x : x : (dupli xs)

dupli' :: [a] -> [a]
dupli' = foldr (\x acc -> x:x:acc) []

-- bind (flatMap)
dupli'' :: [a] -> [a]
dupli'' xs = let f = \x -> [x,x] in xs >>= f

