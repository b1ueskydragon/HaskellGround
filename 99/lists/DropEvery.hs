{-
Drop every N'th element from a list.

dropEvery "abcdefghik" 3
"abdeghk"
-}

module DropEvery where

dropEvery :: [a] -> Int -> [a]
dropEvery xs 0  = xs
dropEvery xs n = map snd (filter (\x -> fst x `mod` n /= 0) (zip [1..] xs))

