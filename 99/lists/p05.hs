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

-- tail rec style
myReverse'' :: [a] -> [a]
myReverse'' xs = rec xs []
  where rec [x] acc    = x : acc
        rec (x:xs) acc = rec xs (x : acc)

-- TODO : fold or scan
