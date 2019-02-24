{-
as-pattern

a is the entire Maybe Tuple,
b is just the first Just in the tuple,
and c and d are the values contained
in the first and second Just in the tuple respectively 
-}

let a @ (b @ (Just c), Just d) = (Just 1, Just 2) in (a, b, c, d)

