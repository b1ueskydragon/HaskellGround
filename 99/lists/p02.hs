-- Find the last but one element of a list
myButLast :: [a] -> a
myButLast xs = reverse xs !! 1

-- case match
myButLast' :: [a] -> a
myButLast' xs = case xs of
  []     -> error "Nil"
  [x]    -> error "Singleton"
  (x:xs) -> if length xs == 1 then x
            else myButLast' xs 

-- [x,_] could be (x:(_:[]))
myButLast'' :: [a] -> a
myButLast'' [x,_]  = x
myButLast'' (_:xs) = myButLast' xs

-- functional composition
-- head(tail(reverse xs)))
myButLast''' :: [a] -> a
myButLast''' = head . tail . reverse

myButLast'''' :: [a] -> a
myButLast'''' = last . init 

-- folding. const and car
-- TODO
