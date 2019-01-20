{-
Decode a run-length encoded list.
Given a run-length code list generated as specified in problem 11.
Construct its uncompressed version.

decodeModified [Multiple 4 'a',Single 'b',Multiple 2 'c',Multiple 2 'a',Single 'd',Multiple 4 'e']
"aaaabccaadeeee"
-}

module DecodeModified where

import EncodeModified

decodeModified :: (Eq a) => [Pair a] -> [a]
decodeModified = foldr f []
  where
    f x acc | Single v <- x     = v:acc
            | Multiple c v <- x = replicate c v ++ acc 

decodeModified' :: (Eq a) => [Pair a] -> [a]
decodeModified' = reverse . rec []
  where
    rec acc [] = acc
    rec acc (h:tail) | Single v <- h     = rec (v:acc) tail
                     | Multiple c v <- h = if c==2 then rec (v:v:acc) tail
                                           else rec (v:acc) ((Multiple (c-1) v):tail)

