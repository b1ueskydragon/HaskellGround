-- Find out whether a list is a palindrome.

-- simply recursive
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = True
isPalindrome [_] = True
isPalindrome xs = (head xs) == (last xs) && (isPalindrome $ init $ tail xs)

isPalindrome' :: (Eq a) => [a] -> Bool
isPalindrome' xs = f [] xs xs
  where
    f rev (x:xs) (_:_:ys) = f (x:rev) xs ys
    f rev (x:xs) [_]      = rev == xs
    f rev xs []           = rev == xs

isPalindrome'' :: (Eq a) => [a] -> Bool
isPalindrome'' xs = take half xs == reverse (drop half' xs)
  where 
    len   = length xs
    half  = len `div` 2
    half' = if odd len then len `div` 2 + 1 else half

-- same as above
isPalindrome''' :: (Eq a) => [a] -> Bool
isPalindrome''' xs = let len = length xs in take (len `div` 2)  xs == reverse (drop (len `div` 2 + (len `mod` 2)) xs) 

-- using foldr or foldl with accumulator True, it helps avoid empty list error.
isPalindrome'''' :: (Eq a) => [a] -> Bool
isPalindrome'''' xs = foldr (&&) True $ zipWith (==) xs (reverse xs) 

-- same as above
-- and :: Foldable t => t Bool -> Bool 
isPalindrome''''' :: (Eq a) => [a] -> Bool
isPalindrome''''' xs = and $ zipWith (==) xs (reverse xs)
 
