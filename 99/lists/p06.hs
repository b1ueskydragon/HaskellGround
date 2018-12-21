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

-- TODO: try half, zip, fold, divisor(only Integer)
