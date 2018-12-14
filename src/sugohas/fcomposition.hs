-- (.) :: (b -> c) -> (a -> b) -> a -> c
-- f . g = \x -> f (g x)

f1 = map (\x -> negate (abs x)) [-5, 3, 4] 
f2 = map (negate . abs) [-5, 3, 4]

-- f3 = (sum . replicate 5 . (max 6.7 8.9))
-- f4 = (sum . replicate 5 . max 6.7) 8.9 
-- f5 = sum . replicate 5 . max 6.7 $ 8.9

-- $ is right-associative
-- f (g (z x))  ==  f $ g $ z x
f6 = sum (filter (>10) (map (*2) [2..10]))
f7 = sum $ filter (>10) $ map (*2) [2..10]

fn x = ceiling (negate (tan (cos (max 50 x))))
fn' = ceiling . negate . tan . cos . max 50

