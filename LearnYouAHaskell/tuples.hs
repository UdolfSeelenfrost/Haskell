tuples = [(1,2), (3,4), (10,11)]

-- tuples2 = [(1,2), (3,4), (10,11), (1 )] ist illegal!

{-
ghci > fst (8 ,11)
ghci > snd (8 ,11)
8-}



--compine to lists into tuples
combineLists l1 l2 = zip l1 l2
-- ghci> combineLists [1,2,3] [4,5,6] > [(1,4),(2,5),(3,6)]

triangles = [ (a,b,c) | c <- [1..10] , b <- [1..10] , a <- [1..10] ]

rightTriangles = [ (a,b,c) | c <- [1..10] , b <- [1..c] , a <- [1..b], a^2 + b^2 == c^2]