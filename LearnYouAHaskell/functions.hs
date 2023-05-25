{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}
import System.Win32 (xBUTTON1)

lucky :: (Integral a) => a -> String
lucky 7 = "WOW eine SIIIEBEN"
lucky x = "sorry, Pech gehabt"

sayMe :: ( Integral a) => a -> String
sayMe 1 = " One ! "
sayMe 2 = " Two ! "
sayMe 3 = " Three !"
sayMe 4 = " Four !"
sayMe 5 = " Five !"
sayMe x = " Not between 1 and 5"

factorial :: ( Integral a ) => a -> a
factorial 0 = 1
factorial n = n * factorial ( n - 1)

addVectors :: ( Num a ) => (a , a) -> (a , a) -> (a , a)
addVectors a b = ( fst a + fst b , snd a + snd b)

addVectors2 :: ( Num a) => (a , a) -> (a , a) -> (a , a)
addVectors2 (x1 , y1) (x2 , y2) = ( x1 + x2 , y1 + y2 )

--exctracting elements of triplets
first :: (a , b , c) -> a
first (x , _ , _ ) = x
second :: (a , b , c) -> b
second (_ , y , _) = y
third :: (a , b , c) -> c
third (_ , _ , z ) = z

{-
Pattern matching in list comprehension
ghci > let xs = [(1 ,3) , (4 ,3) , (2 ,4) , (5 ,3) , (5 ,6) , (3 ,1)]
ghci > [a+ b | (a , b) <- xs ]
[4 ,7 ,6 ,8 ,11 ,4]
-}

head2 :: [a] -> a
head2 [] = error "Error, gibt keinen Head"
head2 (x:xs) = x

tell :: ( Show a) => [a] -> String
tell [] = " The list is empty "
tell (x :[]) = " The list has one element : " ++ show x
tell (x:y :[]) = " The list has two elements : " ++ show x ++ " and " ++ show y
tell (x:y: _) = " This list is long . The first two elements are : " ++ show x ++ " and " ++ show y

tail2 [] = error "No tail xD"
tail2 [x] = x
tail2 (x:xs) = tail2 xs

length2 [] = 0
length2 [x] = 1
length2 (x:xs) = 1 + length2 xs

sum2 [] = 0
sum2 (x:xs) = x + sum2 xs





