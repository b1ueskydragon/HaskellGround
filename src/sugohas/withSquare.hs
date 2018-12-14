-- Scans are used to monitor the progression of a function that can be implemented as a fold. 
-- How many elements does it take for the sum of the roots of all natural numbers to exceed 1000?
sqrtSums :: Int
sqrtSums = length (takeWhile (<1000) (scanl1 (+) (map sqrt [1..]))) + 1

sqrtSums' :: Int
sqrtSums' = (+1) $ length $ takeWhile (<1000) $ scanl1 (+) $ map sqrt [1..]

-- $ means that function application can be treated just like another function
-- curried (waiting full params)
fapp = map ($ 3) [(4+), (10*), (^2), sqrt]
