somar :: Int -> Int -> Int
somar x y = x + y

somar' :: Int -> (Int -> Int)
somar' = \x -> (\y -> x + y)

-- aplica duas vezes a mesma funcao

twice :: (a -> a) -> a -> a
twice f x = f (f x)
