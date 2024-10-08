{-  Exercício de casamento de padrões ( pattern matching )
    
    funcao booleana And        -}

-- forma feia e ruim
e :: Bool -> Bool -> Bool
e True True = True
e True False = False
e False True = False
e False False = False

-- forma mais ou menos boa e bonita
e' :: Bool -> Bool -> Bool
e' True True = True
e' _ _ = False  -- _ é um coringa, qualquer coisa que não seja True ja satisfaz a condição

-- forma bonita e boa
e'' :: Bool -> Bool -> Bool
e'' True b = b  -- se o primeiro argumento for True, retorna o segundo argumento
e'' False _ = False  -- se o primeiro argumento for False, nao me interessa o segundo argumento, retorna False

