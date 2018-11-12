maximum' :: (Ord a) => [a] -> a
maximum' xs = case xs of
            [] -> error "Nil"
            [x] -> x
            (h:tail) | h > maxTail -> h
                     | otherwise -> maxTail
                     where maxTail = maximum' tail
