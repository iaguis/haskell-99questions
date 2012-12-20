-- (*) Remove the K'th element from a list.

removeAt :: Int -> [a] -> [a]
removeAt _ [] = []
removeAt n l@(x:xs)
     | n > 1 = x : removeAt (n-1) xs
     | n < 0 = l
     | otherwise = xs
