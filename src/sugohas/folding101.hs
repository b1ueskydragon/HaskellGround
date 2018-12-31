-- fold takes a binary funtion and a list to fold up.

-- About binary function.
-- fl (accumulator, current)   \acc x -> ...  fold the list up from the left side
-- fr (current, accumulator)   \x acc -> ...  fold from the right side
-- accumulator is a starting value, current is a current value.

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

head' :: [a] -> a
head' = foldr1 (\x _ -> x)
head'' :: [a] -> a
head'' = foldl1 (\acc _ -> acc)

last' :: [a] -> a
last' = foldl1 (\_ x -> x)
last'' :: [a] -> a
last'' = foldr1 (\_ acc -> acc)

