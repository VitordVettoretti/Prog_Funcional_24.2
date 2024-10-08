pares :: [a] -> [(a, a)]
pares lista = zip listas (tail lista)

ordenadaCrescente :: [a] -> Bool
ordenadaCrescente lista = and [x <= y | (x,y) <- pares lista] -- erro
-- a operacao <= so funciona para tipos que sao da classe Ord

ordenadaCrescente2 :: Ord a => [a] -> Bool
ordenadaCrescente2 lista = and [x <= y | (x,y) <- pares lista] 