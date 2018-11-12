gcd' :: Int -> Int -> Int
gcd' a b
  | a `mod` b == 0  =  b 
  | otherwise       =  gcd' b (a `mod` b)