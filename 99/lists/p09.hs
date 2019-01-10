{-
Pack consecutive duplicates of list elements into sublists.
If a list contains repeated elements they should be placed in separate sublists.

  pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
  ["aaaa","b","cc","aa","d","eeee"]

Remarks,
  ['a'] == "a"
   Nil of [[]] is []
-}

import Data.List

-- recursive
pack :: (Eq a) => [a] -> [[a]]
pack xs = reverse (f xs [] [])
  where
    f [] sub res     = sub:res
    f (x:xs) sub res = if sub == [] || x == head sub then f xs (x:sub) res else f xs [x] (sub:res)

-- takewhile and dropwhile
pack' :: (Eq a) => [a] -> [[a]]
pack' = reverse . f []
  where
    f res [] = res
    f res xs = f ((takeWhile (== head xs) xs):res) (dropWhile (== head xs) xs)

pack'' :: (Eq a) => [a] -> [[a]]
pack'' = foldr f []
  where
    f x []          = [[x]]
    f x (stack:acc) = if x == head stack then ((x:stack):acc) else ([x]:stack:acc)

pack''' :: (Eq a) => [a] -> [[a]]
pack''' = f []
  where
    f res [] = reverse res
    f res xs = f (fst s : res) (snd s)
      where s = span (== head xs) xs

-- Data.List - same as above
pack'''' :: (Eq a) => [a] -> [[a]]
pack'''' = group 

-- TODO: split, more recursion and so on

