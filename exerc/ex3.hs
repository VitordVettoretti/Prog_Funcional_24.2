fatorial :: Integer -> Integer
fatroial n = if n==0 then 1 else n * fatorial (n-1)

-- fatorial usando pattern matching
fatorial' :: Integer -> Integer
fatorial' 0 = 1
fatorial' n = n * fatorial' (n-1)

-- fatorial usando guardas
fatorialguarda :: Integer -> Integer
fatorialguarda n
    | n < 0 = error "argumento negativo"
    | n == 0 = 1
    | otherwise = n * fatorialguarda (n-1)

-- misturando pattern matching e guardas
-- nao funciona
fatorial'' :: Integer -> Integer
fatorial'' n
    | n < 0 = error "argumento negativo"
    | 0 = 1 -- erro aqui
    | n = n * fatorial'' (n-1) -- erro aqui

