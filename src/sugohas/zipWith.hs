-- first parameter is a function that produces a list type c
zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
-- nothing to zip cause one of the list(second or third param) is empty, so return Nil.
zipWith' _ [] _          = []
zipWith' _ _ []          = []
-- it doesn't do (x,y), but f x y. 
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys
