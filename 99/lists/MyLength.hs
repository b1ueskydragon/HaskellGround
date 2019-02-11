--  Find the number of elements of a list.

module MyLength where

myLength :: [a] -> Int
myLength [] = 0
myLength xs = snd $ last $ zip xs [1..]

-- recursive
myLength' :: [a] -> Int
myLength' []     = 0
myLength' (_:xs) = 1 + myLength' xs

myLength'' :: [a] -> Int
myLength'' xs = sum $ map(\_ -> 1) xs


-- myLength'' to function composition
myLength''' :: [a] -> Int
myLength''' = sum . map(\_ -> 1)

-- myLength to function composition
-- error if list is empty
myLength'''' :: [a] -> Int
myLength'''' = fst . last . zip [1..]

