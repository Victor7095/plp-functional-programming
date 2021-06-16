count :: [Int] -> Int
count [] = 0
count [_] = 0
count (a: b: tail) | a == b = 1 + count(b:tail)
                   | otherwise = 0
-- count [2,2,2,3,4,4,2,9,5,2,4,5,5,5]
-- -> 3

nextDiffrent :: [Int] -> [Int]
nextDiffrent [] = []
nextDiffrent [_] = []
nextDiffrent (a: b: tail) | a == b = nextDiffrent(b:tail)
                          | otherwise = b:tail
-- nextDifferent [2,2,2,3,4,4,2,9,5,2,4,5,5,5]
-- -> [3,4,4,2,9,5,2,4,5,5,5]
                        

compactar :: [Int] -> [[Int]]
compactar [] = []
compactar [a, b] = []
compactar (a: b: tail) | count (a:b:tail) > 0 = 
                          [1 + count (a:b:tail), a] : 
                          compactar(nextDiffrent(a: b: tail))
                       | otherwise = [a]: compactar(nextDiffrent(a: b: tail))

--ghci ex9.hs
main = do 
  putStrLn "Compactar"  
  print(compactar [2,2,2,3,4,4,2,9,5,2,4,5,5,5])