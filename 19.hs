-- (**) Rotate a list N places to the left.
-- Hint: Use the predefined functions length and (++).

rotate :: [a] -> Int -> [a]
rotate xs n = drop nmod xs ++ take nmod xs
    where nmod = n `mod` length xs
