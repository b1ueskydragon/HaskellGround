{-
left side is type constructors
right side is value constructors
-}

-- (x, y) coordinate
data Point = Point Float Float deriving (Show)

data Shape = Circle Point Float | Rectangle Point Point deriving (Show)

-- zero coordinates
baseCircle :: Float -> Shape
baseCircle r = Circle (Point 0 0) r

baseRect :: Float -> Float -> Shape
baseRect w h  = Rectangle (Point 0 0) (Point w h)

surface :: Shape -> Float
surface (Circle _ r)                            = pi * r ^ 2
surface (Rectangle (Point x1 y1) (Point x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)

-- parallel displacement
nudge :: Shape -> Float -> Float -> Shape
nudge (Circle (Point x y) r) a b                  = Circle (Point (x+a) (x+b)) r
nudge (Rectangle (Point x1 y1) (Point x2 y2)) a b = Rectangle (Point (x1+a) (y1+b)) (Point (x2+a) (y2+b))


-- 3d vector
data Vector a = Vector a a a deriving (Show)

vplus :: (Num t) => Vector t -> Vector t -> Vector t
(Vector i j k) `vplus` (Vector l m n) = Vector (i+l) (j+m) (k+n)
(Vector i j k) `scalarMult` m = Vector (i*m) (j*m) (k*m)
(Vector i j k) `vectMult` (Vector l m n) = i*l + j*m + k*n -- mult horizontal vector and vertical vector
