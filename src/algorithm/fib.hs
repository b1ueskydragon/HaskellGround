--
-- Recurrence formula (for basic approach)
--
--        0 (i=0)
-- f(i) = 1 (1=1)
--        f(i-1) + f(i-2) (i>=2)
--

-- TODO: Improvement speed (stack to queue, or memoize, or something)
-- Not fast. since 2 new branch will created per 1 invoke.
fib n = 
  case n of
    _ | n < 0 -> error "minus"
      | n < 2 -> 1
      | otherwise -> fib(n - 1) + fib(n - 2)

-- Tail recursion
-- faster than f(n - 1) + f(n - 2). since branch will be created on linear (very straight).
fibtail n = fibtail' n 1 1
    where
        fibtail' n x y -- secondary param x is a cache.
              | n == 0 = 1
              | n == 1 = x
              | otherwise = fibtail' (n - 1) (x + y) (x)

-- Tail recursion 01 (same logic as above)
tailfib n = fibfunc n 0 1
    where
        fibfunc n acc x | n <= 0 = acc
                        | otherwise = fibfunc (n - 1) x (acc + x) 

-- take k fibonacci (lazy evaluation)
fibonacci = 1 : 1 : zipWith (+) fibonacci (tail fibonacci)
