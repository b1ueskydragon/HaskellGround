-- Flatten a nested list structure.

{-
flatten $ Elem 5
[5]
flatten $ List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]
[1,2,3,4,5]
flatten $ List []
[]
-}

data NestedList a = Elem a | List [NestedList a] deriving (Show)

-- recursive
flatten :: NestedList a -> [a]
flatten (Elem x)      = [x]
flatten (List [])     = []
flatten (List (x:xs)) = flatten x ++ flatten (List xs)

-- act
-- a value of an action >>= function
flatten' :: NestedList a -> [a]
flatten' (Elem x) = [x]
flatten' (List x) = x >>= flatten'

-- foldr
-- only folding if x is `List` 
{-
e.g.)
foldr (++) [] [[1,2,3]] == [1,2,3]
foldr (++) [] [[1,2,3], [4,5]] == [1,2,3,4,5]

Remarks, [1, [2, [3, 4], 5]] is a type error.
 -}
flatten'' :: NestedList a -> [a]
flatten'' (Elem x) = [x]
flatten'' (List x) = foldr (++) [] (map flatten'' x)

