module Main where

doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y

main = do
    print $ doubleUs 6 18

