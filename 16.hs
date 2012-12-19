-- (**) Drop every N'th element from a list.

dropEvery :: [a] -> Int -> [a]
dropEvery xs n = dropEvery' 1 xs n where
    dropEvery' i (y:ys) n
        | i == n = dropEvery' 1 ys n
        | otherwise = y : dropEvery' (i+1) ys n
    dropEvery' _ [] _ = []
