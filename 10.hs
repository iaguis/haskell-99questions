pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x:xs) = let (first, rest) = span (==x) xs
                  in (x:first) : pack rest

encode :: Eq a => [a] -> [(Int, a)]
encode [] = []
encode xs = (encode' . pack) xs
    where encode' = foldr (\x acc -> (length x, head x) : acc) []
