head :: [a] -> a
head (x:_) = x -- retorna o primeiro elemento da lista
-- nao funciona para listas vazis

head' :: [a] -> a    
head' [] = error "Lista vazia"
head' (x:_) = x 
-- ainda nao funciona mas retorna um erro

head'' :: [a] -> Maybe a
head'' [] = Nothing -- valor do tipo Maybe
head'' (x:_) = Just x -- valor do tipo Maybe
-- agora funciona para listas vazias e retorna um Nothing


