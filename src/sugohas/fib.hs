--
-- Recurrence formula (for basic approach)
--
--        0 (i=0)
-- f(i) = 1 (1=1)
--        f(i-1) + f(i-2) (i>=2)
--

-- TODO: Improvement speed (stack to queue, or memoize, or something)
fib n = 
  case n of
    _ | n < 0 -> error "minus"
      | n < 2 -> 1
      | otherwise -> fib(n - 1) + fib(n - 2)

-- Tail recursion
fibtail n = fibtail' n 1 1
    where
        fibtail' n x y -- secondary param x is a cache.
              | n == 0 = 1
              | n == 1 = x
              | otherwise = fibtail' (n - 1) (x + y) (x)

-- take k fibonacci (lazy evaluation)
fibonacci = 1 : 1 : zipWith (+) fibonacci (tail fibonacci)
