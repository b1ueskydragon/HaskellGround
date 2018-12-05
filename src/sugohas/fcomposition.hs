-- (.) :: (b -> c) -> (a -> b) -> a -> c
-- f . g = \x -> f (g x)

f1 = map (\x -> negate (abs x)) [-5, 3, 4] 
f2 = map (negate . abs) [-5, 3, 4]

f3 = (sum . replicate 5 . (max 6.7 8.9))
-- f4 = (sum . replicate 5 . max 6.7) 8.9 
-- f5 = sum . replicate 5 . max 6.7 $ 8.9
