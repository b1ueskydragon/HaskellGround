-- DFS
-- O(2^N) N is length of nums

import Data.List

-- return x or approximation of x
find_x :: [Int] -> Int -> Int -> Int -> Int
find_x nums x i cache
  | i == length nums = cache -- no more to compare.
  | nums!!i == x     = x     -- found and stop.
  | otherwise        = compare_x x (find_x nums x (i + 1) (cache + nums!!i)) (find_x nums x (i + 1) cache)

-- find approximation of x
compare_x :: Int -> Int -> Int -> Int
compare_x x a b = if abs (x - a) > abs(x - b) then b else a

main = do
  -- TODO std input
  print $ find_x (sort [1, 34, 55, 99, 77]) 134 0 0