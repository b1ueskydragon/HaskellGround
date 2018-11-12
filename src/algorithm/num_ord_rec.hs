-- Num is not a subclass of Ord.
-- Ord is for types that have an ordering (not only numeric).
-- Num is just a numeric being.

replicate' :: (Num i, Ord i) => i -> a -> [a]  
replicate' n x 
         | n <= 0    = []  
         | otherwise = x:replicate' (n-1) x


take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
    | n <= 0 = [] -- base case
take' _ [] = [] -- base case
take' n (x:xs) = x : take' (n-1) xs


reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x] 


zip' :: [a] -> [b] -> [(a,b)]
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x,y):zip' xs ys

-- linear search recursive
-- Eq typeclass provides an interface for testing for equality
elem' :: (Eq a) => a -> [a] -> Bool
elem' a [] = False
elem' a (x:xs)
    | a == x = True
    | otherwise = a `elem'` xs

