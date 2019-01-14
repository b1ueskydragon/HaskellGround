{-
Run-length encoding of a list.
Use the result of problem P09 to implement the so-called run-length encoding data compression method.
Consecutive duplicates of elements are encoded as lists (N E)
where N is the number of duplicates of the element E.

encode "aaaabccaadeeee"
[(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
-}

import Data.List

encode :: (Eq a) => [a] -> [(Int, a)]
-- encode xs = let gs = group xs in zip (map (length) gs) (map (head) gs)
-- encode xs = map (\x -> (length x, head x)) (group xs)
encode = map (\x -> (length x, head x)) . group

