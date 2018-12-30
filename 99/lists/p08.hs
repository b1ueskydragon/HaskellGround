-- Eliminate consecutive duplicates of list elements.

{-
compress "aaabccaadeeee"
"abcade"
-}

-- foldr
compress :: (Eq a) => [a] -> [a]
compress = foldr f []
  where
    f x []  = [x]
    f x acc = if (head acc) /= x then x:acc else acc

