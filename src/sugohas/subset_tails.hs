-- searching a list for a sublist

import Data.List

search :: (Eq a) => [a] -> [a] -> Bool
search sub xs = foldl (\acc x -> if take (length sub) x == sub then True else acc) False (tails xs)

