removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [ c | c <- st , c `elem` ['A'.. 'Z']]

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

{-
ghci > :t head
head :: [ a] -> a

a ist eine type variable und kann verschiedene Typen annehmen. head ist eine "polymorphic function", da sie eine type variable verarbeitet

ghci > :t (==)
(==) :: ( Eq a) => a -> a -> Bool

Die == function nimmt zwei Argumente vom gleichen Type (a) an. a muss dabei member der typeclass "Eq" sein. "Eq" bietet ein interface um equality zu testen.
Das ist ein bisschen wie dass "a implements Interface Eq"


"Ord" is for types that have an ordering.
Members of "Show" can be presented as strings.
"Enum" members are sequentially ordered types
"Bounded" members have an upper and a lower bound.
"Num" is a numeric typeclass. Its members have the property of being able to act like numbers.
"Integral" includes only integral (whole) numbers
"Floating" includes only floating point numbers, so Float and Double.


-}