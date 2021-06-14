-- isEven :: Int -> Bool
-- isEven n = n `mod` 2 == 0

splitEvenOdds :: [Int] -> [[Int]]
--splitEvenOdds xs = [filter (not . isEven) xs, filter isEven xs]
splitEvenOdds xs = [filter odd xs, filter even xs]

-- ghci ex7.hs
main = do 
   putStrLn "[[Impares],[Pares]]"  
   print(splitEvenOdds [1,2,3,4,5,6,7])