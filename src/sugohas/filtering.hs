largestDivisible :: (Integral a) => a
largestDivisible = head (filter p [100000, 99999..])
       where p x = x `mod` 3829 == 0


main = do 
  print $ filter (`elem` ['a'..'z']) "u LaUgH aT mE BeCaUsE I aM diFfeRent"  
  print $ filter (`elem` ['A'..'Z']) "i lauGh At You BecAuse u r aLL the Same"

  print $ largestDivisible
  
  print $ takeWhile (/=' ') "elephants know how to party"  

  print $ sum ( takeWhile (<10000) (filter odd (map (^2) [1..])) )
  print $ sum ( takeWhile (<10000) [n^2 | n <-[1..], odd (n^2)]  )
