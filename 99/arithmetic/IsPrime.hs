{-
Determine whether a given integer number is prime.

isPrime 7
True
-}

module IsPrime where

-- rem is faster than mod
isPrime :: Int -> Bool
isPrime 2 = True
isPrime x = x > 2 && odd x && f x
  where f k = foldr (&&) True (map (\x -> k `rem` x /=0) [3,5..(floor $ sqrt $ fromIntegral k)])

main = do
  print $ isPrime 2147483647

