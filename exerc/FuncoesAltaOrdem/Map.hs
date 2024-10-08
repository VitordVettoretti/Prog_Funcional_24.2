--Funcao de alta ordem Mep, que aplica uma funcao a todos os elementos de uma lista
{-
    map (+1) [1, 2, 3, 4]
             [2, 3, 4, 5]

    map (*2) [1, 2, 3, 4]
             [2, 4, 6, 8]

    map (==2) [1, 2, 3, 4]
              [False, True, False, False]
-}

map' :: (a -> b) -> [a] -> [b]
