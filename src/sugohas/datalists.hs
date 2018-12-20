import Data.List
--
--            3x^2 + 5x + 9
--     10x^3            + 9 
--  +   8x^3 + 5x^2 + x - 1 
--

polynomials_sum = map sum . transpose

main = do
  print $ polynomials_sum [[0,3,5,9],[10,0,0,9],[8,5,1,-1]]
