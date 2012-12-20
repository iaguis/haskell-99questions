-- (*) Split a list into two parts; the length of the first part is given.
-- Do not use any predefined predicates.

split :: [a] -> Int -> ([a], [a])
split [] _ = ([], [])
split a@(x:xs) n
    | n > 0 = (x:ys, zs)
    | otherwise = ([], a)
    where (ys, zs) = split xs (n-1)

