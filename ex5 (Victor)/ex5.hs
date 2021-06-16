interseccao :: [Integer] -> [Integer] -> [Integer]
interseccao [] _ = []
interseccao (head_a:a) b | head_a `elem` b = head_a : interseccao a b
                         | otherwise = interseccao a b

-- ghci ex5.hs
main = do 
   putStrLn "The intersection of two lists is:"  
   print(interseccao [3, 6, 5, 7] [9, 7, 5, 1, 3])

-- head_a         a                  b
-- 3          [6, 5, 7]       [9, 7, 5, 1, 3]

-- interseccao [3, 6, 5, 7] [9, 7, 5, 1, 3]
-- 3 : interseccao [6, 5, 7] [9, 7, 5, 1, 3]
-- 3 : interseccao [5, 7] [9, 7, 5, 1, 3]
-- 3 : 5 : interseccao [7] [9, 7, 5, 1, 3]
-- 3 : 5 : 7 : interseccao [] [9, 7, 5, 1, 3]
-- 3 : 5 : 7 : []