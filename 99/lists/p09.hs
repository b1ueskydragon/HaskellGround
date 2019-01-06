{-
Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.

pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
["aaaa","b","cc","aa","d","eeee"]
-}

-- recursive
pack :: (Eq a) => [a] -> [[a]]
pack xs = f xs [] [[]]
  where
    f [] _ res       = res
    f [x] _ _        = [[x]]
    f (x:xs) acc res = if x == head xs then f xs (x:acc) res else f xs acc (acc:res)

-- foldr or foldl
