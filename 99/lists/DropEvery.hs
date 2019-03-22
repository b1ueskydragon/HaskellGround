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

-- TODO fromJust
dropEvery' :: [a] -> Int -> [Maybe a]
dropEvery' xs n = zipWith f xs [1..]
  where
    f x y = if y `mod` n /= 0 then Just x else Nothing
