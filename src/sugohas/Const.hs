module Const where

{- 
:t const id
const id :: b -> a -> a
 
const id x == id 
-}
myId = const id 'a'

main = do 
  print $ const id 'a' 'b'
  print $ myId 'b'

