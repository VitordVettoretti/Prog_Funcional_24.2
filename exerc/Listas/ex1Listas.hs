concatenar :: [[a]] -> [a]
concatenar listaDeListas = [? | lista <- listaDeListas, e <- lista]

primos :: Integer -> [Integer]
primos n = [x | x <- [2..n], primo x]

primo :: Integer -> Bool
primos n = fatores n == [1,n]

fatores :: Integer -> [Integer]
fatores n = [x | x <- [1..n], n 'mod' x == 0]
