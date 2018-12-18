-- Reverse a list.

-- recursive ++
myReverse :: [a] -> [a]
myReverse []     = []
myReverse (x:xs) = myReverse xs ++ [x]

-- recursive :
myReverse' :: [a] -> [a]
myReverse' []  = []
myReverse' [x] = [x]
myReverse' xs  = last xs : myReverse' (init xs)

-- tail rec style. use accumulator (stack)
myReverse'' :: [a] -> [a]
myReverse'' xs = rec xs []
  where rec [] acc     = acc
        rec (x:xs) acc = rec xs (x : acc)

-- folding
reverse' :: [a] -> [a]
reverse' = foldl (flip (:)) []

-- scanl (flip (:)) [] [1,2,3,4,5]
-- -> [[],[1],[2,1],[3,2,1],[4,3,2,1],[5,4,3,2,1]]

-- use `id` as an identity element
myReverse''' :: [a] -> [a]
myReverse''' xs = foldr (\x f acc -> f (x : acc)) id xs []

myReverse'''' :: [a] -> [a]
myReverse'''' = foldl (\acc x -> x : acc) [] 
