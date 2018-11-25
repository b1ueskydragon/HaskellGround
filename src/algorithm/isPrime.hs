isPrime :: Int -> Bool
isPrime n
  | n <= 1         = False
  | n == 2         = True
  | n `mod` 2 == 0 = False
  | otherwise      = isPrime' n [3,5..n]
   -- takeWhile (<ceiling(n ** 0.5))[3,5..])

-- helper function
isPrime' :: Int -> [Int] -> Bool
isPrime' n (x:tail)
  | length tail == 0 = True
  | n `mod` x == 0   = False
  | otherwise        = isPrime' n tail