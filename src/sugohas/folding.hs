-- A fold takes a binary function, a starting value (accumulator) and a list to fold up.
-- Takes the accumulator and the first (or last) element and produces a new accumulator.
sum'' :: (Num a) => [a] -> a
sum'' xs = foldl (\acc x -> acc + x) 0 xs

-- We can omit the xs as the parameter because calling foldl (+) 0 will return a function that takes a list. 
-- foo a = bar b a  could be  foo = bar b  (currying).
sum' :: (Num a) => [a] -> a
sum' = foldl (+) 0

-- f to x and concat (generate new list)
-- : is much more cheaper than ++
map'' :: ( a -> b ) -> [a] -> [b]
map'' f xs = foldr (\x acc -> f x : acc) [] xs

main = do
  print $ sum'' [3,5,2,1]
  print $ sum' [3,5,2,1]
  print $ map'' (*2) [0,1,2]


-- a right fold and the binary function is f 
-- and the starting value is z. 
-- right folding over the list [3,4,5,6], 
-- does: 
-- f 3 (f 4 (f 5 (f 6 z)))

-- f is called with the last element in the list and the accumulator, 
-- that value is given as the accumulator to the next to last value and so on. 

-- left fold over that list with g as the binary function
-- and z as the accumulator
-- is the equivalent of: 
-- g (g (g (g z 3) 4) 5) 6

