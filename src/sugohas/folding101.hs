-- fold takes a binary funtion and a list to fold up.

-- About binary function.
-- fl (accumulator, current)   \acc x -> ...  fold the list up from the left side
-- fr (current, accumulator)   \x acc -> ...  fold from the right side
-- accumulator is a starting value, current is a current value.
-- example of the current value: head or last of the list

-- curried

maximum' :: (Ord a) => [a] -> a
maximum' = foldr1 (\x acc -> if acc > x then acc else x)

reverse' :: [a] -> [a]
reverse' = foldl (\acc x -> x : acc) []

product' :: (Num a) => [a] -> a
product' = foldr1 (*)

map' :: (a -> b) -> [a] -> [b]
map' f = foldr (\x acc -> f x : acc) []


filter' :: (a -> Bool) -> [a] -> [a]
filter' f = foldr (\x acc -> if f x then x : acc else acc) []

-- TODO: head' last'
