{-
Drop every N'th element from a list.

dropEvery "abcdefghik" 3
"abdeghk"
-}

module DropEvery where

import Data.Maybe

dropEvery :: [a] -> Int -> [a]
dropEvery xs 0  = xs
dropEvery xs n = map snd (filter (\x -> fst x `mod` n /= 0) (zip [1..] xs))

dropEvery' :: [a] -> Int -> [a]
dropEvery' xs n = 
  if n == 0 then xs else let f x y = if y `mod` n /= 0 then Just x else Nothing in map fromJust $ filter isJust $ zipWith f xs [1..] 

