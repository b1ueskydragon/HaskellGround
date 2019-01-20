{-
Run-length encoding of a list.
Use the result of problem P09 to implement the so-called run-length encoding data compression method.
Consecutive duplicates of elements are encoded as lists (N E)
where N is the number of duplicates of the element E.

encode "aaaabccaadeeee"
[(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
-}

module Encode where

import Data.List
import Pack

encode :: (Eq a) => [a] -> [(Int, a)]
encode = map (\x -> (length x, head x)) . group

encode'''' :: (Eq a) => [a] -> [(Int, a)]
encode'''' = map (\x -> (length x, head x)) . Pack.pack

encode' :: (Eq a) => [a] -> [(Int, a)]
encode' xs = let gs = group xs in zip (map (length) gs) (map (head) gs)

encode'' :: (Eq a) => [a] -> [(Int, a)]
encode'' = foldr f []
  where
    f x []       = (1, x) : [] 
    f x (h:tail) = if x == snd h then (fst h + 1, x) : tail else (1, x) : h : tail


-- ["aaaa","b","cc","aa","d","eeee"]
encode''' :: [[a]] -> [(Int, a)]
encode''' = reverse . f []
  where
    f acc []     = acc
    f acc (x:xs) = f ((length x, head x): acc) xs

