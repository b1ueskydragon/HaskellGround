import qualified Data.ByteString.Lazy.Char8 as B
import Data.Maybe

bsReadInts :: B.ByteString -> [Int]
bsReadInts = map (fst . fromJust . B.readInt) . B.words

test :: Int -> [Int] -> Int
test n vs
  | m == 0    = n
  | otherwise = length vs 
  where m = n `mod` 2


main = do
  n:vs <- bsReadInts <$> B.getContents
  putStrLn $ show $ test n vs

