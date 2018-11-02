-- TODO: Improvement speed (stack to queue, or memoize, or something)
fib n = 
  case n of
    _ | n < 0 -> error "minus"
      | n < 2 -> 1
      | otherwise -> fib(n - 1) + fib(n - 2)
