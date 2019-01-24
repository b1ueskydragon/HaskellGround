-- https://stackoverflow.com/questions/13042353/does-haskell-have-tail-recursive-optimization
-- Try these two:
length $ foldl1 (++) $ replicate 1000 "The size of intermediate expressions is more important than tail recursion."
length $ foldr1 (++) $ replicate 1000 "The number of reductions performed is more important than tail recursion!!!"
