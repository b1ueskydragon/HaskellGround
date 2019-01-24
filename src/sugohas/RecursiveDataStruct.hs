data List' a = Empty' | Cons a (List' a) deriving (Show, Read, Eq, Ord)
 
{-
fixity declaration (right-associative)
 5 is a fixity states
-}
infixr 5 :-:

data List a = Empty | a :-: (List a) deriving (Show, Read, Eq, Ord)

{-
standard defined

infixr 5  ++ 
(++) :: [a] -> [a] -> [a]  
[]     ++ ys = ys  
(x:xs) ++ ys = x : (xs ++ ys)  
-}

infixr 5 .++
(.++) :: List a -> List a -> List a
Empty .++ ys      = ys
(x :-: xs) .++ ys = x :-: (xs .++ ys)
 
