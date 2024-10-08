par :: Int -> Bool
par x = x `mod` 2 == 0

impar :: Int -> Bool
impar = not . par