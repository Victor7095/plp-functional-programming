intercala::[Int]->[Int]->[Int]
intercala x [] = x
intercala [] x = x
intercala (a:xs) (b:ys) = a: b: intercala xs ys

main = do print (intercala [1, 3, 5] [2, 4, 6])