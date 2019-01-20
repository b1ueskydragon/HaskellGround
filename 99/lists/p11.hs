{-
Modify the result of problem 10 in such a way that if an element has no duplicates it is simply copied into the result list.
Only elements with duplicates are transferred as (N E) lists.

encodeModified "aaaabccaadeeee"
[Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']
-}

import Data.List

-- [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
encode :: (Eq a) => [a] -> [(Int, a)]
encode = map (\x -> (length x, head x)) . group

data Pair a = Single a | Multiple Int a deriving (Show, Ord, Eq)

encodeModified :: (Eq a) => [a] -> [Pair a]
encodeModified = map (\x -> if fst x == 1 then Single (snd x) else Multiple (fst x) (snd x)) . encode

encodeModified' :: (Eq a) => [a] -> [Pair a]
encodeModified' = foldr f []
  where
    f x []                    = [Single x]
    f x (Single v : tail)     = if x == v then Multiple 2 x : tail else Single x : Single v : tail
    f x (Multiple c v : tail) = if x == v then Multiple (c+1) v : tail else Single x : Multiple c v : tail
