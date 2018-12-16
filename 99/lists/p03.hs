-- Find the K'th element of a list. The first element in the list is number 1.

elementAt :: [a] -> Int -> a
elementAt xs k
  | k < 1 || k > length xs  = error "Index out of bounds"  
  | otherwise               = xs !! (k - 1)

elementAt' :: [a] -> Int -> a
elementAt' xs k
  | k < 1 || k > length xs = error "Index out of bounds"
  | otherwise              = last $ take k xs

elementAt'' :: [a] -> Int -> a
elementAt'' xs k
  | k < 1 || k > length xs = error "Index out of bounds"
  | otherwise              = fst $ last $ zip xs [1..k]

-- recursive
elementAt''' :: [a] -> Int -> a
elementAt''' (x:_) 1   = x
elementAt''' (_:xs) k  = elementAt''' xs (k - 1)
elementAt''' _ _       = error "Index out of bounds"
