{-
isPrime is the wrapper and
worker is the worker function.

This style has two benifits.
1. you can rest assured it will compile into optimal code.
2. the worker/wrapper style is both concise and flexible;
   notice how we did preliminary checks in the wrapper code before invoking the worker, 
   and how the argument n is also (conveniently) in the worker's scope too.
-}
isPrime :: Int -> Bool
isPrime n
  | n <= 1    = False
  | n <= 3    = True
  | otherwise = worker 2
    where
      worker i | i >= n       = True
               | mod n i == 0 = False
               | otherwise    = worker (i+1)

