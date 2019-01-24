{- 
we have to make a new sub-tree each time we decide to go left or right.

Hs doesn't really have a concept of pointer,
just values.

This might seem like it's inefficient
but laziness takes care of that problem.
-}

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Read, Eq)

-- making a node that has something and then two empty sub-trees
singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree

treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert x EmptyTree = singleton x
treeInsert x (Node a left right)
  | x == a = Node x left right
  | x < a  = Node a (treeInsert x left) right
  | x > a  = Node a left (treeInsert x right)

treeElem :: (Ord a) => a -> Tree a -> Bool
treeElem x EmptyTree = False
treeElem x (Node a left right)
  | x == a = True
  | x < a  = treeElem x left
  | x > a  = treeElem x right


nums = [8,6,4,1,7,3,5]

-- fold takes a tree and a list element and produces a new tree
numsTree = foldr treeInsert EmptyTree nums
 
