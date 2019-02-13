{-
id :: a -> a
id x = x

const :: a -> b -> a
const x _ = x
-}

-- id sets an init acc value, when fold a function
-- f [1..]
f = map (+1) . filter odd . take 10
g = foldr (.) id [map (+1), filter odd, take 10]

-- return Bool itself
h = takeWhile (==True) [True, True, False, True]
i = takeWhile id [True, True, False, True]

myif :: Bool -> a -> a -> a
myif True t _ = t
myif _ _ e    = e

-- const ignores secondary param
myif' :: Bool -> a -> a -> a
myif' True = const
myif' _    = const id

