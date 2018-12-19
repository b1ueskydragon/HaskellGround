-- Find out whether a list is a palindrome.

-- lol
isPalindrome :: [a] -> Bool
isPalindrome xs = take (length xs `div` 2) == back xs
  where
     back xs
       | even $ length xs = drop (length xs `div` 2) xs
       | otherwise        = drop (length xs `div` 2 + 1) xs

-- TODO: fix ↑, try zip, fold
