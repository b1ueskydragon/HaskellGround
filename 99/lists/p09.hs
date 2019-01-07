{-
Pack consecutive duplicates of list elements into sublists.
If a list contains repeated elements they should be placed in separate sublists.

  pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
  ["aaaa","b","cc","aa","d","eeee"]

Remarks,
  ['a'] == "a"
-}

-- recursive
pack :: (Eq a) => [a] -> [[a]]
pack xs = reverse (f xs [] [])
  where
    f [] sub res     = sub:res
    f (x:xs) sub res = if sub == [] || x == head sub then f xs (x:sub) res else f xs [x] (sub:res)

-- TODO: fold, split, more recursion and so on

