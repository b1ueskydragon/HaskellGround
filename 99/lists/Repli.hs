{-
repli "abc" 3
"aaabbbccc"
-}

module Repli where

repli :: [a] -> Int -> [a]
repli [] _     = []
repli _ 0      = []
repli (x:xs) c = f c x ++ repli xs c
  where
    f c x = if c > 1 then x : f (c-1) x else [x]

repli' :: [a] -> Int -> [a]
repli' xs n = xs >>= replicate n

repli'' :: [a] -> Int -> [a]
repli'' xs n = concatMap (replicate n) xs

