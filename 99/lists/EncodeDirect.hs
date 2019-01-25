{-
Run-length encoding of a list (direct solution).

Implement the so-called run-length encoding data compression method directly.

I.e. don't explicitly create the sublists containing the duplicates, as in problem 9,
but only count them.
As in problem P11, simplify the result list by replacing the singleton lists (1 X) by X.

encodeDirect "aaaabccaadeeee"
[Multiple 4 'a',Single 'b',Multiple 2 'c',Multiple 2 'a',Single 'd',Multiple 4 'e']
-}

module EncodeDirect where

import EncodeModified (Pair (..))

encodeDirect :: Eq a => [a] -> [Pair a]
encodeDirect [] = []
encodeDirect xs = (if cnt > 1 then Multiple cnt x else Single x) : encodeDirect p2
  where
    x        = head xs
    (p1, p2) = span (==x) xs -- entire xs required
    cnt      = length p1

-- TODO takewhile
