-- Linear mapping (?)

-- 0)

ftoall :: Int -> Int -> Int -> Int 
ftoall a b c = f a c * f b c

ftoeach :: Int -> Int -> Int -> Int
ftoeach a b c = f (a * b)  c

-- any operational
f :: Int -> Int -> Int
f x y = x ^ y


-- 1)

-- apply first 
fab = (map (*2) [0..] !! 4)
-- list first
abf = (map (*) [0..] !! 4) 2

-- fab
-- 0,2,4,6,8,10..
-- return 8

-- abf
-- *0,*1,*2,*3,*4,*5..
-- *4
-- * 4 2
