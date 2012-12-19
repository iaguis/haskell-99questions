-- (**) Replicate the elements of a list a given number of times.

repli :: [a] -> Int -> [a]
repli [] _ = []
repli (x:xs) n = (replicate n x) ++ repli xs n

repli' xs n = concatMap (replicate n) xs
