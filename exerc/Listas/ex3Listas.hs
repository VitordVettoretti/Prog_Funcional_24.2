tamanho :: [a] -> Integer
tamanho [] = 0
tamanho (_:ns) = 1 + tamanho ns

revetre :: [a] -> [a]
reverte [] = []
reverte (n:ns) = reverte ns ++ [n]

concatenar :: [a] -> [a] -> [a]
concatenar [] ys = ys
concatenar (x:xs) ys = x : concatenar xs ys
