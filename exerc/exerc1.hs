-- funcao que verifica se um numero divide outro
-- como divisao inteira

divide :: Integer -> Integer -> Bool
divide x y = y `mod` x == 0

divide2 :: Integral a => a -> a -> Bool
divide2 x y = y `mod` x == 0    