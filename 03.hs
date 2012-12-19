elementAt :: [a] -> Int -> a
elementAt [] _ = error "Out of bounds!"
elementAt (x:_) 1 = x
elementAt (_:xs) k
    | k < 1 = error "Out of bounds!"
    | otherwise = elementAt xs (k-1)
