-- accumulate and return. O(logN)
pow' :: (Integral a) => a -> a -> a
pow' x e
  | e == 0    = 1
  | odd e     = x * (pow' x (e - 1))
  | otherwise = pow' (x * x) (e `div` 2)
 
