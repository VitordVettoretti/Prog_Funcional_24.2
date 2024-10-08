somatorio :: Num a => [a] -> a
somatorio [] = 0                     -- Semelhante à Funcao Foldr (+) 0
somatorio (x:xs) = x + somatorio xs

{-      somatorio [1,2,3]
        somatorio 1:2:3:[]
        1 + (somatorio 2:3:[])
        1 + (2 + somatorio 3:[])
        1 + (2 + (3 + somatorio []))
        1 + (2 + (3 + 0))
        6
            
-}

somatoriofold :: Num a => [a] -> a
somatoriofold = foldr (+) 0

-- utilizando o fold Left
-- O metodo recusrivo anterior nao funciona com o fold left

somatoriofold' :: Num a => [a] -> a
somatoriofold' = foldl (+) 0

-- somatorio recursivo com padrao foldl
somatorio' :: Num a => [a] -> a
soamtorio' [] acc = acc
soamtorio' (x:xs) acc = somatorio' xs (acc + x)

{-
    somatorio' 1:2:3:[] 0
    somatorio' 2:3:[] (0 + 1)
    somatorio' 3:[] ((0 + 1) + 2)
    somatorio' [] (((0 + 1) + 2) + 3)
    (((0 + 1) + 2) + 3)
    6
-}


tamanho :: [a] -> Integer
tamanho [] = 0
tamanho (_:xs) = 1 + tamanho xs

{-      tamanho [1,2,3]
        tamanho 1:2:3:[]
        1 + tamanho 2:3:[]
        1 + (1 + tamanho 3:[])
        1 + (1 + (1 + tamanho []))
        1 + (1 + (1 + 0))
        3
-}

tamanhofold :: [a] -> Integer
tamanhofold = foldr (\x acc -> 1 + acc) 0