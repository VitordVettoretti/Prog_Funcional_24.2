e :: [Bool] -> Bool
e [] = True
e (x:xs) = x && e xs

efold :: [Bool] -> Bool
efold = foldr (&&) True


