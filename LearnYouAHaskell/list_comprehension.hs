import GHC.Generics (Generic1(to1))
import System.Win32 (xBUTTON1)
{-
List comprehension:

S = {2 · x|x ∈ N, x ≤ 10}

ghci > [x *2 | x <- [1..10]]
[2 ,4 ,6 ,8 ,10 ,12 ,14 ,16 ,18 ,20]

ghci > [x *2 | x <- [1..10] , x *2 >= 12]
[12 ,14 ,16 ,18 ,20]
Dabei ist (x <- [1..10] der Iterator) der Iterator, (x *2 >= 12) ist das Predicate (Filter!)
und (x *2) funktioniert wie eine map auf die Entstehende Liste!!
-}



--How about if we wanted all numbers from 50 to 100 whose remainder when divided with the number 7 is 3?
remainder = [ x | x <- [50, 51..100], x `mod` 7 == 3 ]

--we want a comprehension that replaces each odd number greater than 10 with "BANG!" and each odd number that’s less than 10 with "BOOM!". If a number isn’t odd, we throw it out of our list.
boombang xs = [ if x>10 then "Bang!" else "Boom!"  | x <- xs, odd x ]

productAbove50 = [x*y | x <- [2,10,20], y <- [20, 30, 40], x*y >= 50]

-- _ ist dont_care symbol. Wir ersetzen jedes element der liste durch 1 und summieren die Liste dann auf
length2 xs = sum [1 | _ <- xs]


removeNonUppercase st = [ c | c <- st , c `elem` ['A'..'Z']]