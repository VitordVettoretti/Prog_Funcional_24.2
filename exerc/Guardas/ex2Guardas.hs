maior :: Integral a => a -> a -> a
maior x y = if x >= y then x else y

maiorguarda :: Integral a => a -> a -> a
maiorguarda x y
        | x >= y = x
        | otherwise = y

