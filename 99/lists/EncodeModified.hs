{-
Modify the result of problem 10 in such a way that if an element has no duplicates it is simply copied into the result list.
Only elements with duplicates are transferred as (N E) lists.

encodeModified "aaaabccaadeeee"
[Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']
-}

module EncodeModified where

import Encode

data Pair a = Single a | Multiple Int a deriving (Show, Eq)

encodeModified :: (Eq a) => [a] -> [Pair a]
encodeModified = map (\x -> if fst x == 1 then Single (snd x) else Multiple (fst x) (snd x)) . Encode.encode

-- refactor
encodeModified''' :: (Eq a) => [a] -> [Pair a]
encodeModified''' = map f . Encode.encode
  where
    f (1,x) = Single x
    f (n,x) = Multiple n x

encodeModified' :: (Eq a) => [a] -> [Pair a]
encodeModified' = foldr f []
  where
    f x []                    = [Single x]
    f x (Single v : tail)     = if x == v then Multiple 2 x : tail else Single x : Single v : tail
    f x (Multiple c v : tail) = if x == v then Multiple (c+1) v : tail else Single x : Multiple c v : tail

-- refactor
encodeModified'' :: (Eq a) => [a] -> [Pair a]
encodeModified'' = foldr f []
  where
    f x []                           = [Single x]
    f x (h:tail) | Single v <- h     = if x == v then Multiple 2 x : tail else Single x : h : tail
                 | Multiple c v <- h = if x == v then Multiple (c+1) v : tail else Single x : h : tail

