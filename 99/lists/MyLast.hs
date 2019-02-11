-- Find the last element of a list

module MyLast where

myLast :: [a] -> a
myLast [] = error "empty list"
myLast xs = case xs of
 (x:xs) | length xs == 0 -> x 
        | otherwise      -> myLast xs

myLast' :: [a] -> a
myLast' []     = error "empty list" 
myLast' [x]    = x
myLast' (_:xs) = myLast xs

myLast'' :: [a] -> a
myLast'' = foldr1 (const id)

myLast''' :: [a] -> a
myLast''' = foldr1 (flip const)

