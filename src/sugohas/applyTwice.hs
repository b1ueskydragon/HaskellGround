-- Partial apply of curried function.
-- Each function actually taking only one parameter and returning partially applied functions 
-- until we reach a function that returns a solid value.

-- simply saying, took a and return a
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x * y * z


-- to invoke
-- ghci> :l applyTwice
-- ghci> main
main = do
  print $ applyTwice (+3) 10
  print $ applyTwice (++ " HAHA") "HEY"
  print $ applyTwice ("HAHA " ++) "HEY"
  print $ applyTwice (multThree 2 2) 9
  print $ applyTwice (3:) [1]

