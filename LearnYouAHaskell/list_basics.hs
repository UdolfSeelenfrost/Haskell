import GHC.Generics (Generic1(to1))
import System.Win32 (xBUTTON1)


{-
Füge zwei Listen zusammen
Concat: ghci > [1 ,2 ,3 ,4] ++ [9 ,10 ,11 ,12]
[1 ,2 ,3 ,4 ,9 ,10 ,11 ,12]


Cons: ghci > ’A’: " SMALL CAT "
"A SMALL CAT "

Get by index: ghci > " Steve Buscemi " !! 6
’B ’

Man kann Listen vergleichen mit >, <, == oder so. Das passiert Elementweise von links nach rechts
ghci > [3 ,2 ,1] > [2 ,1 ,0]
True


head: erstes Element
tail: Alle Elemente außer das Erste
last: letztes Element
init: Alle Elemente außer das Letzte
length: Anzahl Elemente
null: Ist Liste leer?
reverse: Liste umkehren
take: Nimmt Anzahl Elemente vom Ende der Liste
ghci > take 3 [5 ,4 ,3 ,2 ,1]
[5 ,4 ,3]

drop: Nimmt Anzahl von Elementen vom Anfang Liste
ghci > drop 3 [8 ,4 ,2 ,1 ,5 ,6]
[1 ,5 ,6]

minimum/maximum: größtes/kleinstes Elemente der Liste
sum: summiert Elemente der Liste auf
product: bildet das Produkt der Elemente der Liste
elem: Ist Element in Liste enthalten?
ghci > 4 ‘elem‘ [3 ,4 ,5 ,6]
True

Haskell füllt mit ranges Listen mittels der bestehenden Pattern auf
ghci > [2 ,4..20]
[2 ,4 ,6 ,8 ,10 ,12 ,14 ,16 ,18 ,20]

cycle: Nimmt List cycled sie in einem infinite Loop:
ghci > take 10 ( cycle [1 ,2 ,3])
[1 ,2 ,3 ,1 ,2 ,3 ,1 ,2 ,3 ,1]


repeat: Nimmt Element und cycled es in einem ininite Loop:
ghci > take 10 ( repeat 5)
[5 ,5 ,5 ,5 ,5 ,5 ,5 ,5 ,5 ,5]


-}

ff x = \f -> \y -> f y x

g1 = ff 1 plus

plus x y = x + y


curry2 :: ((a, b) -> c) -> a -> b -> c
curry2 f = \x -> \y -> f (x,y)
uncurry2 :: (a -> b -> c) -> (a, b) -> c
uncurry2 f = \(x,y) -> f x y

f = curry2 . uncurry2
g = f plus 2 3


plus2 = \x -> \y -> x + y

