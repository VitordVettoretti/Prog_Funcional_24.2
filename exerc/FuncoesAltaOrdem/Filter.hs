-- Funcao de alta ordem Filter, que filtra os elementos de uma lista que satisfazem um predicado
{-
    filter (>2) [1, 2, 3, 4]
                [3, 4]

    filter (==2) [1, 2, 3, 4]
                 [2]

    filter even [1, 2, 3, 4]
                [2, 4]
                
-}

filter' :: (a -> Bool) -> [a] -> [a] 