absoluto :: Int -> Int 
absoluto n = if n >= 0 then n else -n

sinalnumero :: Int -> Int
sinalnumero n = if n < 0 then -1 else
                    if n == 0 then 0 else 1

sinalnumeroguarda :: Int -> Int
sinalnumeroguarda n | n < 0 = -1
                    | n == 0 = 0
                    | otherwise = 1