-- Binary search
hasfixedpoint :: [Int] -> Int -> Int -> Int
hasfixedpoint xs low high
  | low == high       = error "Not found" -- edge case: not found
  | midvalue == pivot = pivot -- edge case: found
  | midvalue > pivot  = hasfixedpoint xs low (high - 1)
  | midvalue < pivot  = hasfixedpoint xs (low + 1) high
  where
    pivot = (low + high) `div` 2
    midvalue = xs!!pivot


-- datum
-- xs = [-3, -2, -1, 0, 1, 2, 3, 5, 6, 7, 10, 37, 38, 40, 41, 43, 50, 56, 60, 61, 62, 68, 80, 83, 84, 85, 87, 92, 96, 99]
-- hasfixedpoint xs 0 (length xs)
