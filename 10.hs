-- Run-length encoding of a list. Use the result of problem P09
-- to implement the so-called run-length encoding data compression method.
--
-- Consecutive duplicates of elements are encoded as lists (N E) where N is
-- the number of duplicates of the element E.

pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x:xs) = let (first, rest) = span (==x) xs
                  in (x:first) : pack rest

encode :: Eq a => [a] -> [(Int, a)]
encode [] = []
encode xs = (encode' . pack) xs
    where encode' = foldr (\x acc -> (length x, head x) : acc) []
