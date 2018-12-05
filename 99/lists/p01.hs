-- Find the last element of a list

myLast :: [Int] -> Int
myLast xs = case xs of
  (x:xs) | length xs == 0 -> x 
         | otherwise      -> myLast xs

myLast' :: [Int] -> Int
myLast' [x]    = x
myLast' (_:xs) = myLast xs


-- myLast'' xs = foldr1 (const id)
 
