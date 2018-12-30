-- Eliminate consecutive duplicates of list elements.

{-
compress "aaabccaadeeee"
"abcade"
-}

-- foldr
compress :: (Eq a) => [a] -> [a]
compress (x:xs) = foldr (\x acc -> if x == (head acc) then acc else x:acc) [x] xs
