{-
Pack consecutive duplicates of list elements into sublists.
If a list contains repeated elements they should be placed in separate sublists.

  pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
  ["aaaa","b","cc","aa","d","eeee"]

Remarks,
  ['a'] == "a"
   Nil of [[]] is []
-}

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

-- TODO: fold, split, more recursion and so on

