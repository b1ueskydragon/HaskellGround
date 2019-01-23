{-
Guarded recursion.

Since Haskell is lazy,

The sma function is not tail-recursive,
but nonetheless it wont't build up a huge stack like an equivalent in some other language might do.

In sma, the recursive call is guarded by the (:) data constructor.

Evaluation the first element of a call to sma does not yet make a single recursive call to sma.
Asking for the second element initiates the first recursive call, the thired the second, and so on.
-}

sma :: [Double] -> [Double]
sma (x0:x1:xs) = (x0 + x1) /2 : sma (x1:xs)
sma xs         = xs
