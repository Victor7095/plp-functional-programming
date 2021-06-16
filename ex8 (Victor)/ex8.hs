type Set a = [a]

conjuntoDasPartes :: Set a -> Set (Set a)
conjuntoDasPartes [] = [[]]
conjuntoDasPartes (x:xs) = [x:ps | ps <- conjuntoDasPartes xs] ++ conjuntoDasPartes xs