module Main where

-- ReBuild before execution

doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y

fact n
    | n == 0 = 1
    | otherwise = n * fact (n - 1)

main = do
    print $ doubleUs 6 18
    print $ fact 6

