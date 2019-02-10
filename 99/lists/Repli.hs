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

repli''' :: [a] -> Int -> [a]
repli''' xs n = foldl f [] xs
  where f acc x = acc ++ map (\_ -> x) [1..n]

repli'''' :: [a] -> Int -> [a]
repli'''' xs n = foldr f [] xs
  where f x acc = (stack n) ++ acc
                  where
                    stack 0 = []
                    stack n = x : stack (n-1)

repli''''' :: [a] -> Int -> [a]
repli''''' [] _     = []
repli''''' (x:xs) n = foldr (const (x:)) (repli''''' xs n) [1..n]

