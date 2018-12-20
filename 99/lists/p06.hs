-- Find out whether a list is a palindrome.

-- simply recursive
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = True
isPalindrome [_] = True
isPalindrome xs = (head xs) == (last xs) && (isPalindrome $ init $ tail xs)

-- TODO: try half, zip, fold, divisor(only Integer)
