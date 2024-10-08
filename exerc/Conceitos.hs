-- função que soma doi inteiros
soma :: (Integer, Integer) -> Integer
soma (x, y) = x + y
-- função curryficada que soma dois inteiros
somacurry :: Integer -> Integer -> Integer
somacurry x y = x + y
-- função que gera uma lista de interos de 0 até n
zeroate :: Integer -> [Integer]
zeroate n = [0..n]


{-funcao aplicavel para mais de um tipo de classe
  de tipo, por exemplo, Int, Integer, Float, Double
  e etc.
  Typeclass Num -}

-- função que soma dois números
(+) :: Num a => a -> a -> a

{- >1 + 2
    3

    >1.0 + 2.0
    3.0 

    > 'a' + 'b'
    'error'
-}

{-  Haskell possui um sistema de classes de tipos, tais como:

    Num - Tipos numéricos
    Eq - Tipos comparáveis
    Ord - Tipos ordenáveis

    por exemplo:

    (+) :: Num a  a → a → a
    (==) :: Eq a  a → a → Bool
    (<) :: Ord a  a → a → Bool
-}

:t (/)
(/) :: Fractional a => a -> a -> a
-- Exemplo de uso
-- in = 5 / 2
-- Out = 2.5

{-  Neste caso a função realiza a divisão de dois numros inteiros (Num)
    Porem retorna um numero fracionario (Fractional)
    Por esse motivo, o tipo da funcao é Fractional
-}

1 == 2 -- False
(==) :: Eq a => a -> a -> Bool
{-  É possivels fazer a comparação pois o tipo bool esta contemplado na Typeclass Eq
    por isso a função (==) é do tipo Eq
-}

:t (^)
(^) :: (Num a, Integral b) => a -> b -> a
{- A função (^) calcula o expoente de um numero. Recebe dois argumentos, o primeiro, a base, é um número (Num) e o segundo, o expoente,
    é um número inteiro (Integral), pois so é possivel calcular o expoente de um numero inteiro.
-}

quadrado x = x^2 -- polimorfica

quadrado2 :: Int -> Int
quadrado2 x = x^2 -- tipo definido

:t +d (+)
(+) :: Integer -> Integer -> Integer
-- O +d é usado para mostrar o tipo default da função



-- // Guardas //
-- uma alternativa ao uso de if-then-else

--normal
absoluto :: Int -> Int 
absoluto n = if n >= 0 then n else -n

--guarda
absolutoguarda :: Int -> Int
absolutoguarda n | n >= 0 = n
                 | otherwise = -n -- funciona como em notacoes matematicas para condições

-- // Casamento de Padrorões //

{- muitas funcoes sao mais facilmente definidas por casamento de padores sobre seus argumentos
-}
not :: Bool -> Bool
not False = True
not True = False

{- padroes sob listas

    []
    [1] = 1:[]  - aqui temos uma lista vazia e coolcamos um elemento 1 nela
    [1,2] = 1:2:[]
    [1,2,3] = 1:2:3:[]
-}

head [1,2,3] -- 1

tail [1] -- []
tail [] -- error
tail [1,2] -- [2]

[1,2,3] !! 0 -- 1 -> elemento na posicao 0
[1,2,3] !! 1 -- 2

-- Funcoes que operam sobre listas podem ser definidas atravez do padrao x:xs
{-  
    (x:xs)  -> lista com tamanho 1 ou mais
     |  |-> lista
elemento  

    [] -> lista vazia
-}

head :: [a] -> a
head (x:_) = x -- retorna o primeiro elemento da lista

tail :: [a] -> [a]
tail (_:xs) = xs -- retorna a lista sem o primeiro elemento

