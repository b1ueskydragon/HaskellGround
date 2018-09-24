module Main where

main :: IO ()
doubleUs x y = doubleMe x + doubleMe y
res = doubleUs 6 18
main = do
        putStrLn "Hi skell"
        print res
