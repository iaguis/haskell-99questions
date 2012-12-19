-- (*) Find the K'th element of a list. The first element in the list is number 1.

elementAt :: [a] -> Int -> a
elementAt [] _ = error "Out of bounds!"
elementAt (x:_) 1 = x
elementAt (_:xs) k
    | k < 1 = error "Out of bounds!"
    | otherwise = elementAt xs (k-1)
